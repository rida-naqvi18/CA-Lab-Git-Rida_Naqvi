#ifndef MYSTACK_HPP
#define MYSTACK_HPP

class MyStack
{
private:
    int* data;
    int size;
    int topIndex;

public:
    MyStack(int size);
    ~MyStack();

    void push(int value);
    int pop();
    int top();
    bool isempty();
};

#endif