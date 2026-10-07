#include <iostream>
#include "cafe.hpp"

using namespace std;

int main()
{
    int capacity;

    cout << "Enter max seating capacity: ";
    cin >> capacity;

    Cafe cafe(capacity);

    int choice;
    int number;

    do
    {
        cout << "Alcremie Cafe" << endl;
        cout << "1. Add Customers" << endl;
        cout << "2. Remove Customers Cash" << endl;
        cout << "3. Remove Customers Loyalty Card" << endl;
        cout << "4. Display Total Earnings" << endl;
        cout << "5. Exit" << endl;
        cout << "Enter your choice: ";
        cin >> choice;

        switch (choice)
        {
        case 1:
            cout << "Enter the number of customers entering: ";
            cin >> number;
            cafe.addCustomers(number);
            break;

        case 2:
            cout << "Enter number of customers leaving: ";
            cin >> number;
            cafe.removeCashCustomers(number);
            break;

        case 3:
            cout << "Enter number of customers leaving: ";
            cin >> number;
            cafe.removeLoyalCustomers(number);
            break;

        case 4:
            cafe.displayTotalEarnings();
            break;

        case 5:
            cout << "Exiting" << endl;
            break;

        default:
            cout << "Invalid Choice" << endl;
        }

    } while (choice != 5);

    return 0;
}