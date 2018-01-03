// AsmTest1.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"

void testAccumulator(int n);
extern "C" int Accumulator_(int n);

void testFibonacci(int n);
extern "C" int Fibonacci_(int n);

int _tmain(int argc, _TCHAR* argv[])
{
	testAccumulator(6);
	testFibonacci(10);
	
	printf("Exit?");
	getchar();
	return 0;
}

void testAccumulator(int n) {
	int a = Accumulator_(n);
	printf("Accumulator : %d\n", a);
}

void testFibonacci(int n) {
	int a = Fibonacci_(n);
	printf("Fibonacci : %d\n", a);
}
