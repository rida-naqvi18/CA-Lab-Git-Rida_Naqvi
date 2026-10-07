
#ifndef CAFE_HPP
#define CAFE_HPP
class Cafe 

{
	private:
	
		int maxCapacity;
		int currentCustomers;
		double totalEarnings;
	public:
	
	Cafe(int capacity);
	
	void addCustomers(int number);
	void removeCashCustomers( int number);
	
	void removeLoyalCustomers( int number);
	void displayTotalEarnings();
	
};
# endif 

	
