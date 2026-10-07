#include <iostream>
#include "Complex.hpp"
using namespace std;

Complex::Complex()
{
    real = 0;
    imag = 0;
}

Complex::Complex(double r, double i)
{
    real= r;
    imag = i;
}

Complex Complex::add(Complex c)
{
    Complex result;
    result.real = real + c.real;
    result.imag = imag + c.imag;
    return result;
}

Complex Complex::add(double d)
{
    Complex result;
    result.real = real + d;
    result.imag= imag;
    return result;
}

Complex Complex::subtract(Complex c)
{
    Complex result;
    result.real = real - c.real;
    result.imag = imag - c.imag;
    return result;
}

Complex Complex::subtract(double d)
{
    Complex result;
    result.real = real - d;
    result.imag = imag;
    return result;
}

Complex Complex::multiply(Complex c)
{
    Complex result;
    result.real = real * c.real - imag * c.imag;
    result.imag = real* c.imag + imag* c.real;
    return result;
}

Complex Complex::multiply(double d)
{
    Complex result;
    result.real = real * d;
    result.imag= imag * d;
    return result;
}

void Complex::show()
{
    std::printf("%g + %g i", real, imag);
}