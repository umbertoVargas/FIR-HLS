//
// Based on https://github.com/xupgit/High-Level-Synthesis-Flow-on-Zynq-using-Vivado-HLS/blob/master/Lab4.md
//
// Modified by Sergio Lopez-Buedo, october 2019
//


#include "fir_filter.h"




// two samples, one for left channel and the other for right channel
#ifdef SIMULATION
 void fir_filter( data_t datain [2],  data_t dataout [2]) {
#else


	 void fir_filter( ap_axis_custom datain [2],  ap_axis_custom dataout [2]){


#endif



  const coef_t c[N+1] = {
    -378, -73, 27, 170, 298, 352, 302, 168, 14, -80, -64, 53, 186, 216, 40,
    -356, -867, -1283, -1366, -954, -51, 1132, 2227, 2829, 2647, 1633, 25, -1712, -3042,
    29229,
    -3042, -1712, 25, 1633, 2647, 2829, 2227, 1132, -51, -954, -1366, -1283, -867, -356,
    40, 216, 186, 53, -64, -80, 14, 168, 302, 352, 298, 170, 27, -73, -378
  };

  // note that the shift registers for the FIR filters have been declared
  // as static to maintain values between sucessive function calls
  static data_t shift_reg_left[N];
  static data_t shift_reg_right[N];

  // accumulators
  acc_t acc_left;
  acc_t acc_right;

  // index for the loops
  int i;

 //sign extended
  data_t datain_left;
  data_t datain_right;
  //////////////////
  // Left Channel //
  //////////////////

  // last tap
  acc_left = (acc_t) shift_reg_left[N-1] * (acc_t) c[N];

  // middle taps
  loop_left: for (i=N-1; i!=0; i--) {
    acc_left += (acc_t) shift_reg_left[i-1] * (acc_t) c[i];
    shift_reg_left[i] = shift_reg_left[i-1];
  }
#ifdef SIMULATION
  // first tap
 	   datain_left =  datain[0];
#else
  // first tap
   if(datain[0].data & 0x8000)
 	  {

 		  datain_left =  datain[0].data | 0xFFFF0000;

 	  }
   else
 	   datain_left =  datain[0].data;
#endif


  acc_left += (acc_t) datain_left* (acc_t) c[0];
  shift_reg_left[0] = datain_left;

#ifdef SIMULATION
  // output result
    dataout[0] = acc_left;

#else
  // output result
    dataout[0].data = acc_left >> 15;
    dataout[0].last=datain[0].last;
#endif

  ///////////////////
  // Right Channel //
  ///////////////////

  // last tap
  acc_right = (acc_t) shift_reg_right[N-1] * (acc_t) c[N];

  // middle taps
  loop_right: for (i=N-1; i!=0; i--) {
    acc_right += (acc_t) shift_reg_right[i-1] * (acc_t) c[i];
    shift_reg_right[i] = shift_reg_right[i-1];
  }


#ifdef SIMULATION
  // first tap
	 datain_right = datain[1];
#else
  // first tap
  if(datain[1].data & 0x8000)
	  {
		  datain_right= datain[1].data | 0xFFFF0000;
	   }
  else
	  	  datain_right = datain[1].data;

#endif



  acc_right += (acc_t)datain_right* (acc_t) c[0];
  shift_reg_right[0] = datain_right;

#ifdef SIMULATION
  // output result
   dataout[1] = acc_right;

#else
  // output result
   dataout[1].data = acc_right >> 15;
   //last signal
   dataout[1].last=datain[1].last;
#endif

}
