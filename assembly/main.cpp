#include <iostream>

////////////////////////////////////////////
// Integer Arithmetic functions     ////////
////////////////////////////////////////////


//Basic function takes in an integer and returns it
extern "C" int testReturn(int i);

extern "C" int addTwo(int a, int b);

extern "C" int multiplyTwo(int a, int b);

extern "C" int powerOf(int value, int iter);

///////////////////////////////////////
//	Array Operations
///////////////////////////////////////

//Basic function to return second element
extern "C" int* SecondElement(int val[]);

//Function to return the xth element in an array
//position = 1 will return first element.
extern "C" int* getElement(int val[], int position);


//Work in progress currently increments first value 3 times, should increment whole array once.
extern "C" void incElements(int val[]);

int main()
{
	//std::cout << testReturn(3) << std::endl;

	//std::cout << multiplyTwo(5 , 4) << std::endl;

	//std::cout << powerOf(3, 3);
	int a[] = { 4,2,3 };
	int b;
	
	
	//b = *getElement(a, 3);
	a[0];

	//std::cout << incElements(a);
	incElements(a);
	std::cout << a[1];
	
	return 0;
}