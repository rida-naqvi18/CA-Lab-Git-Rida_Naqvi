#include <iostream>
#include "Complex.hpp"
using namespace std;

int main()
{
    double r1, i1, r2, i2, d1;

    cin >> r1 >> i1;
    cin >> r2 >> i2;
    cin >> d1;

    Complex c1(r1, i1);
    Complex c2(r2, i2);

    cout << "c1: ";
    c1.show();
    cout << endl;

    cout << "c2: ";
    c2.show();
    cout << endl;

    cout << "d1: " << d1 << endl;

    cout << "c1+c2 : ";
    c1.add(c2).show();
    cout << endl;

    cout << "c1- c2 : ";
    c1.subtract(c2).show();
    cout << endl;

    cout << "c1*c2 : ";
    c1.multiply(c2).show();
    cout << endl;

    cout << "c1+d1 : ";
    c1.add(d1).show();
    cout << endl;

    cout << "c1-d1 : ";
    c1.subtract(d1).show();
    cout << endl;

    cout << "c1*d1 : ";
    c1.multiply(d1).show();
    cout << endl;

    return 0;
}