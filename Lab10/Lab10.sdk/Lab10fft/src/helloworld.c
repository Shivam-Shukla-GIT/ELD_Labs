/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <complex.h>
#include <stdio.h>
#include "xaxidma.h"
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include <stdlib.h>
#include <xtime_l.h>
#include "dma_init.h"

#define N 8

//vector which contains the positions of data shuffle
const int rev8[N] = {0, 4, 2, 6, 1, 5, 3, 7};

const float complex W[N/2] = {1 - 0*I, 0.7071067811865476 - 0.7071067811865475*I, 0 - 1*I,  -0.7071067811865475 - 0.7071067811865476*I};

void bitreverse(float complex dataIn[N], float complex dataOut[N]){
	for (int i = 0 ; i < N ; i++){
		dataOut[i] = dataIn[rev8[i]];
    }
}

void FFT_stages(float complex FFT_input[N], float complex FFT_output[N]){
    float complex temp1[N], temp2[N];
    for (int i = 0 ; i < N ; i=i+2)
		{
		 temp1[i] = FFT_input[i] + FFT_input[i+1];
		 temp1[i+1] = FFT_input[i] - FFT_input[i+1];
		}
    for (int i = 0 ; i < N ; i=i+4)
    {
   	 for (int j = 0; j < 2; ++j)
   	 {
   		 temp2[i+j] = temp1[i+j] + W[2*j]*temp1[i+j+2];
   		 temp2[i+2+j] = temp1[i+j] - W[2*j]*temp1[i+j+2];
   	 }

    }
    for (int i = 0 ; i < N/2 ; i++)
		{
		 FFT_output[i] = temp2[i] + W[i]*temp2[i+4];
		 FFT_output[i+4] = temp2[i] - W[i]*temp2[i+4];
		}
}

int main()
{
	init_platform();
	// Initializing Timer instances for PS and PL
	XTime PL_start_time, PL_end_time;
	XTime PS_start_time,PS_end_time;
	// Initializing software and hardware output buffers
	const float complex FFT_input[N] = {11 + 23*I,32 + 10*I,91 + 94*I,15 + 69*I,47 + 96*I,44 + 12*I,96 + 17*I,49 + 58*I};
	float complex FFT_output_sw[N], FFT_output_hw[N];
	float complex FFT_rev_sw[N];

	//// Software 8-point FFT
	XTime_SetTime(0); // Setting Timer to value 0
	XTime_GetTime(&PS_start_time); // Get Start Time
	bitreverse(FFT_input, FFT_rev_sw);
	FFT_stages(FFT_rev_sw, FFT_output_sw);
	XTime_GetTime(&PS_end_time); // Get End Time


	//// Hardware 8-point FFT
	int status;
	XAxiDma AxiDMA;
	status = DMA_Init(&AxiDMA, XPAR_AXI_DMA_0_DEVICE_ID);
	if(status)
		return 1;

	XTime_SetTime(0); // Setting Timer to value 0
	XTime_GetTime(&PL_start_time); // Get Start Time
	// Simple DMA Transfers
	status = XAxiDma_SimpleTransfer(&AxiDMA, (UINTPTR)FFT_output_hw, (sizeof(float complex)*N), XAXIDMA_DEVICE_TO_DMA);
	status = XAxiDma_SimpleTransfer(&AxiDMA, (UINTPTR)FFT_input, (sizeof(float complex)*N), XAXIDMA_DMA_TO_DEVICE);

	// POLLING-Check whether the DMA-to-Device and Device-to-DMA transfers are complete
	while(XAxiDma_Busy(&AxiDMA, XAXIDMA_DMA_TO_DEVICE));

	while(XAxiDma_Busy (&AxiDMA, XAXIDMA_DEVICE_TO_DMA));

	XTime_GetTime(&PL_end_time); // Get End Time

	//////// Verifying Hardware result with Software
	for(int i=0;i<N;i++){
		printf("\n\rPS Output- %f+%fI, PL Output- %f+%fI", crealf(FFT_output_sw[i]), cimagf(FFT_output_sw[i]), crealf(FFT_output_hw[i]), cimagf(FFT_output_hw[i]));
		float diff1= abs(crealf(FFT_output_sw[i])-crealf(FFT_output_hw[i]));
		float diff2= abs(cimagf(FFT_output_sw[i])-cimagf(FFT_output_hw[i]));
		if(diff1>=0.0001 && diff2>=0.0001){
			printf("\n\nData Mismatch found at index %d ",i);
			break;
		}
		else{
			printf("DMA Transfer Successful!");
		}
	}

	printf("\n\r- Execution Time Comparison--");
	float time=0;
	time= (float)1.0*(PS_end_time-PS_start_time)/(COUNTS_PER_SECOND/1000000);
	printf("\n\rExecution time for PS in micro-seconds: %f", time);
	time=0;
	time= (float)1.0 * (PL_end_time-PL_start_time)/(COUNTS_PER_SECOND/1000000);
	printf("\n\rExecution time for PL in micro-seconds: %f", time);
	return 0;

}
