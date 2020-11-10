#include <iostream>

////////////////////////////////////////////
// Integer Arithmetic functions     ////////
////////////////////////////////////////////


//Basic function takes in an integer and returns it
extern "C" int testReturn(int i);

extern "C" int addTwo(int a, int b);

extern "C" int multiplyTwo(int a, int b);

extern "C" int powerOf(int value, int iter);


extern "C" void incArr(int arr[2]);
int main()
{
	//std::cout << testReturn(3) << std::endl;

	//std::cout << multiplyTwo(5 , 4) << std::endl;

	//std::cout << powerOf(3, 3);

	return 0;
}