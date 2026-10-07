#ifndef COMPLEX_HPP
#define COMPLEX_HPP

class Complex {
private:
    double real;
    double imag;

public:
    Complex();
    Complex(double r, double i);

    Complex add(Complex c);
    Complex add(double d);

    Complex subtract(Complex c);
    Complex subtract(double d);

    Complex multiply(Complex c);
    Complex multiply(double d);

    void show();
};

#endif