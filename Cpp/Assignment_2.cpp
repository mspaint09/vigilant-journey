// -------------- SOURCE FILE OF ASSIGNMENT ----------
#include <iostream>
using namespace std;

int main()
{
    // Variable types
    int studID;
    int numLet;
    double expression3;
    double expression5;
    	
    // Variable statements
    studID = 20306996;
    numLet = 10;
    expression3 = studID/numLet;
    expression5 = 100000 / (99 + ((studID - 54321) / 
    ((numLet + 30) * (numLet+30))));
    	
    // first section stating the required information like last name
    cout << "My last name is \n";
    // student id
    cout << "My Student ID is: " << studID << endl;
    // number of characters in my last name
    cout << "The number of characters in my last name is 10" << endl;
    
    // Expression 1 
    cout << "\nExpression #1: " << studID % 2 << endl;
    // Expression 2
    cout << "\nExpression #2: " << studID % numLet << endl;
    // Expression 3
    cout << "\nExpression #3: " << expression3 << endl;
    // Expression 4
    cout << "\nExpression #4: " << 1+2+3+4+5+6+7+8+9+numLet << endl;
    // Expression 5
    cout << "\nExpression #5: " << expression5 << endl;
    
    return (0);
} 
// ------------ OUTPUT PASTED FROM SCREEN ------------
/*
My last name is
My Student ID is: 20306996
The number of characters in my last name is 10

Expression #1: 0

Expression #2: 6

Expression #3: 2.0307e+06

Expression #4: 55

Expression #5: 7
*/
// ----------------- END OF SUBMISSION ----------------
