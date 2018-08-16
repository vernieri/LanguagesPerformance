//
// C-Performance 
// Version 1.0 
// By: Vernieri
// 19 Octouber 2017
// GitHub: github.com/vernieri
// Last Update: 16 August 2018
//


#include <stdio.h>
#include <stdlib.h>
#include <time.h>
 
//Global

int array[99999];

//Functions

void generator();
void calc();

void main(void) {

  clock_t timeStart, timeEnd;
  double conclusion;
  timeStart = clock();

  generator();

  timeEnd = clock();

  conclusion = (timeEnd-timeStart)/(CLOCKS_PER_SEC);
  printf("\n Tempo em segundos: %f \n ", conclusion);


}

void generator(){

  int i;
  printf("Lets generate some numbers: \n");
  for (i = 0; i < 99999; i++){

     
    array[i] = rand() % 199999;

     }

  for(i=0;i<99999;i++){
  	printf("A random number: %d \n", array[i]);

  }

  calc();     
  //return 0;

}

void calc() {
	int i,e,n,p,prime;
	prime = 0;

	for(i=0;i<=99999;i++){
		p = 2;
		n = array[i];
		e = 0;

		do{

		 
			if((n % p) != 0){
				e++;

			}	
		p++;

		} while(p<n);

		if((e+2) == n){
			prime++;
		}

	}


	printf("Here the prime numbers found: %d \n", prime);

	//return 0;
}

//gcc -o c-performance c-performance.c
