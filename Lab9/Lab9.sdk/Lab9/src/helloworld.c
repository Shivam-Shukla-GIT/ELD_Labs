#include <complex.h>
#include <stdio.h>
#include <stdlib.h>
#include <xtime_l.h>
#include <math.h>

#define N 8

const int rev8[N] = {0, 4, 2, 6, 1, 5, 3, 7};
const float complex W1[N] = {1 - 0 * I, 0 - 1 * I, 0 , 0, 1 - 0 * I, 0 - 1 * I, 0 , 0};
const float complex W2[N / 2] = {1 - 0 * I, (1 - 1 * I) / sqrt(2) , 0 - 1 * I , (-1 - 1 * I) / sqrt(2)};

void bitreverse(float complex dataIn[N], float complex dataOut[N]) {
bit_reversal:
  for (int i = 0; i < N; i++) {
    dataOut[i] = dataIn[rev8[i]];
  }
}

void FFT_stages(float complex FFT_input[N], float complex FFT_output[N]) {
  float complex temp1[N], temp2[N];
stage1:
  for (int i = 0; i < N; i = i + 2) {
    temp1[i] = FFT_input[i] + FFT_input[i + 1];
    temp1[i + 1] = FFT_input[i] - FFT_input[i + 1];
  }
stage2:
  for (int i = 0; i < 2; i = i + 1) {
    temp2[i] = temp1[i] + W1[i] * temp1[i + 2];
    temp2[i + 2] = temp1[i] - W1[i] * temp1[i + 2];
  }
  for (int i = 4; i < 6; i = i + 1) {
    temp2[i] = temp1[i] + W1[i] * temp1[i + 2];
    temp2[i + 2] = temp1[i] - W1[i] * temp1[i + 2];
  }
stage3:
  for (int i = 0; i < N / 2; i = i + 1) {
    FFT_output[i] = temp2[i] + W2[i] * temp2[i + 4];
    FFT_output[i + 4] = temp2[i] - W2[i] * temp2[i + 4];
    // printf("i=%d, %f %f\n", i, creal(FFT_output[i]), cimagf(FFT_output[i]));
    // printf("i=%d, %f %f\n", i+4, creal(FFT_output[i+4]), cimagf(FFT_output[i+4]));
  }

  //     printf("\n Printinf temp1\r\n");
  // for (int i = 0; i < N; i++) {
  //   printf("%f %f\n", creal(temp1[i]), cimagf(temp1[i]));
  // }
  //       printf("\n Printinf temp2\r\n");
  // for (int i = 0; i < N; i++) {
  //   printf("%f %f\n", creal(temp2[i]), cimagf(temp2[i]));
  // }
}


int main() {
  float complex FFT_input[N] = {1,2,3,4,5,6,7,8};

  float complex FFT_output[N];

  float complex FFT_rev[N];
XTime PS_start_time, PS_end_time;
XTime_SetTime(0);
XTime_GetTime(&PS_start_time);
  bitreverse(FFT_input, FFT_rev);
  FFT_stages(FFT_rev, FFT_output);
XTime_GetTime(&PS_end_time);

  printf("\n Printinf FFT input\r\n");
  for (int i = 0; i < N; i++) {
    printf("%f %f\n", creal(FFT_input[i]), cimagf(FFT_input[i]));
  }

  printf("\n Printinf FFT output\r\n");
  for (int i = 0; i < N; i++) {
      printf("%f %f\n", creal(FFT_output[i]), cimagf(FFT_output[i]));
  }

  float time = 0;
  time = (float)1.0 * (PS_end_time-PS_start_time)/(COUNTS_PER_SECOND/1000000);
  printf("\n\rExecution time for PS in Micro-seconds: %f", time);
 return 0;
}
