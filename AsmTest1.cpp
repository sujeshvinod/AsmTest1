// AsmTest1.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"

void testAccumulator(int n);
extern "C" int Accumulator_(int n);

int _tmain(int argc, _TCHAR* argv[])
{
	testAccumulator(6);
	return 0;
}

void testAccumulator(int n) {
	int a = Accumulator_(n);
	printf("Accumulator : %d\n", a);
}
