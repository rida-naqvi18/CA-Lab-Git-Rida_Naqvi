#include "cafe.hpp"
#include <iostream>

using namespace std;

Cafe::Cafe(int capacity)
{
    maxCapacity = capacity;
    currentCustomers = 0;
    totalEarnings = 0;
}

void Cafe::addCustomers(int number)
{
    if (currentCustomers + number <= maxCapacity)
    {
        currentCustomers += number;
        cout << "Customers added successfully" << endl;
    }
    else
    {
        cout << "Error! Not enough capacity" << endl;
    }
}

void Cafe::removeCashCustomers(int number)
{
    if (number <= currentCustomers)
    {
        currentCustomers -= number;
        totalEarnings += number * 10;

        cout << "Customer removed successfully" << endl;
    }
    else
    {
        cout << "Not enough customers in cafe" << endl;
    }
}

void Cafe::removeLoyalCustomers(int number)
{
    if (number <= currentCustomers)
    {
        currentCustomers -= number;

        cout << "Customer removed successfully" << endl;
    }
    else
    {
        cout << "Not enough customers in cafe" << endl;
    }
}

void Cafe::displayTotalEarnings()
{
    cout << "Total Earnings: $" << totalEarnings << endl;
}
