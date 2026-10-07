#include <iostream>
#include "MyStack.hpp"

using namespace std;

int main()
{
    int size;

    cout << "Enter the size of the stack: ";
    cin >> size;

    MyStack stack(size);

    cout << "\nTesting isempty()" << endl;

    if (stack.isempty())
    {
        cout << "Stack is empty." << endl;
    }
    else
    {
        cout << "Stack is not empty." << endl;
    }

    cout << "\nTesting push()" << endl;

    stack.push(5);
    stack.push(3);
    stack.push(4);

    cout << "Elements pushed into the stack." << endl;

    cout << "\nTesting top()" << endl;
    cout << "Top element: " << stack.top() << endl;

    cout << "\nTesting pop()" << endl;
    cout << "Popped element: " << stack.pop() << endl;

    cout << "Top element after pop: " << stack.top() << endl;

    cout << "\nTesting isempty() again" << endl;

    if (stack.isempty())
    {
        cout << "Stack is empty." << endl;
    }
    else
    {
        cout << "Stack is not empty." << endl;
    }

    return 0;
}