#include <fstream>
#include <iostream>
#include <stdio.h>
#include <math.h>
#include "fir_filter.h"




data_t  samples_In[2048];
data_t samples_Out[2048];
int main (int argc, char **argv) {


  std::ifstream input("C:/Users/umber/AppData/Roaming/Xilinx/Vivado/fir/step.txt");


  if (!input.is_open()) {
	  std::cerr << "Unable to open file input_data";
      exit(1);   // call system to stop
  }

  int i=0;
  data_t x;
  while (input >> x)
	  {
		  samples_In[i] = x;
		  i += 1;

		}

  for( i=0;i < 1024 ; i++)
      		fir_filter(&samples_In[i*2],&samples_Out[i*2+1]);


  std::ofstream myfile ("C:/Users/umber/AppData/Roaming/Xilinx/Vivado/fir/output.txt");
  		  if (myfile.is_open())
  		  {
			for(i=0;i < 2048 ; i++)
				{

					myfile << samples_Out[i]<< std::endl;

				  }
			myfile.close();
  		   }
		  else
			  std::cout << "Unable to open file";


  return 0;
}
