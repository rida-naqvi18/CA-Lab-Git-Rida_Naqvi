#include "MyStack.hpp"
#include <iostream>

using namespace std;

MyStack::MyStack(int size)
{
    this->size = size;
    data = new int[size];
    topIndex = -1;
}

MyStack::~MyStack()
{
    delete[] data;
}

void MyStack::push(int value)
{
    if (topIndex == size - 1)
    {
        cout << "Stack is full." << endl;
    }
    else
    {
        topIndex++;
        data[topIndex] = value;
    }
}

int MyStack::pop()
{
    if (isempty())
    {
        cout << "Stack is empty." << endl;
        return -1;
    }

    int value = data[topIndex];
    topIndex--;

    return value;
}

int MyStack::top()
{
    if (isempty())
    {
        return -1;
    }

    return data[topIndex];
}

bool MyStack::isempty()
{
    return topIndex == -1;
}