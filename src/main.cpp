#include "calculator.h"
#include <iostream>

int main() {
	Calculator calc;
	double a = 10;
	double b = 5;
	std::cout << a << " + " << b << " = " << calc.Add(a, b) << std::endl;
	std::cout << a << " - " << b << " = " << calc.Sub(a, b) << std::endl;
	std::cout << a << " * " << b << " = " << calc.Mul(a, b) << std::endl;
	std::cout << a << " / " << b << " = " << calc.Div(a, b) << std::endl;

	return 0;
}
