#include <complex.h>
#include <stdio.h>
#include "xaxidma.h"
#include "platform.h"
#include "xil_printf.h"
#include "xparameters.h"
#include <stdlib.h>
#include <xtime_l.h>
#include "dma_init.h"
#include <math.h>



#define N 1
//const int rev16[16] = {0, 8, 4, 12, 2, 10, 6, 14, 1, 9, 5, 13, 3, 11, 7, 15};
//const float complex W16[8] = {1 - 0 * I,
//                              0.92387953251 - 0.38268343236 * I,
//                              0.70710678118 - 0.70710678118 * I,
//                              0.38268343236 - 0.92387953251 * I,
//                              0 - 1 * I,
//                              -0.38268343236 - 0.92387953251 * I,
//                              -0.70710678118 - 0.70710678118 * I,
//                              -0.92387953251 - 0.38268343236 * I};

//void bitreverse(float complex dataIn[N], float complex dataOut[N]) {
//  for (int i = 0; i < N; i++) {
//    dataOut[i] = dataIn[rev16[i]];
//  }
//}


void FFT_stages(float FFT_input[N], float FFT_output[N]) {
//  float complex temp1[N], temp2[N], temp3[N];
//stage1:
//  for (int i = 0; i < N; i = i + 2) {
//    temp1[i] = FFT_input[i] + FFT_input[i + 1];
//    temp1[i + 1] = FFT_input[i] - FFT_input[i + 1];
//  }
//
//stage2:
//  for (int i = 0; i < N; i = i + 4) {
//    for (int j = 0; j < 2; ++j) {
//      temp2[i + j] = temp1[i + j] + W16[4 * j] * temp1[i + j + 2];
//      temp2[i + j + 2] = temp1[i + j] - W16[4 * j] * temp1[i + j + 2];
//    }
//  }
//
//stage3:
//  for (int i = 0; i < N; i = i + 8) {
//    for (int j = 0; j < 4; ++j) {
//      temp3[i + j] = temp2[i + j] + W16[2 * j] * temp2[i + j + 4];
//      temp3[i + j + 4] = temp2[i + j] - W16[2 * j] * temp2[i + j + 4];
//    }
//  }
//
//stage4:
//  for (int i = 0; i < N / 2; i = i + 1) {
//    FFT_output[i] = temp3[i] + W16[i] * temp3[i + 8];
//    FFT_output[i + 8] = temp3[i] - W16[i] * temp3[i + 8];
//  }
	   FFT_output[0] = log(1.0 / sqrt(FFT_input[0]));
}



int main() {

	init_platform();
	// Initializing Timer instances for PS and PL
	XTime PL_start_time, PL_end_time;
	XTime PS_start_time,PS_end_time;
	// Initializing software and hardware output buffers
	 const float FFT_input[N] = {16};

	float FFT_output_sw[N], FFT_output_hw[N];
//	float complex FFT_rev_sw[N];

	//// Software 8-point FFT
	XTime_SetTime(0); // Setting Timer to value 0
	XTime_GetTime(&PS_start_time); // Get Start Time
//	bitreverse(FFT_input, FFT_rev_sw);
	FFT_stages(FFT_input, FFT_output_sw);
	XTime_GetTime(&PS_end_time); // Get End Time


	//// Hardware 16-point FFT
	int status;
	XAxiDma AxiDMA;
	status = DMA_Init(&AxiDMA, XPAR_AXI_DMA_0_DEVICE_ID);
	if(status)
		return 1;

	XTime_SetTime(0); // Setting Timer to value 0
	XTime_GetTime(&PL_start_time); // Get Start Time
	// Simple DMA Transfers
	status = XAxiDma_SimpleTransfer(&AxiDMA, (UINTPTR)FFT_output_hw, (sizeof(float)*N), XAXIDMA_DEVICE_TO_DMA);
	status = XAxiDma_SimpleTransfer(&AxiDMA, (UINTPTR)FFT_input, (sizeof(float)*N), XAXIDMA_DMA_TO_DEVICE);

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
