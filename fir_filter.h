#ifndef _FIR_FILTER_H_
#define _FIR_FILTER_H_
#include "ap_axi_sdata.h"

#define SAMPLES N+10 // just few more samples then number of taps
// number of taps
#define N 58

// definition of types
typedef  ap_int<32>   coef_t;
typedef  ap_int<32>   data_t;
typedef  ap_int<64>   acc_t;

 struct ap_axis_custom {
	data_t      data;
    ap_uint<1>       last;
  };
//#define SIMULATION

#ifdef SIMULATION
 void fir_filter( data_t datain [2],  data_t dataout [2]) ;
#else
 void fir_filter( ap_axis_custom datain [2],  ap_axis_custom dataout [2]) ;
#endif

#endif
