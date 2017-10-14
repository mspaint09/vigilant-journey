// -------------- SOURCE FILE OF ASSIGNMENT ----------
// CS 1A Lab 3 Framework
#include <iostream>
#include <string>
#include <sstream>
using namespace std;

// main client --------------------------------------------------------
int main(){
    // food #1 constants
    const string FOOD_1_NAME = "Avocado";
    const int FOOD_1_CALORIES_P100G = 240; // in calories
    const double FOOD_1_SOL_FIBER_P100G = 1.75; // in grams
    const double FOOD_1_SUGARS_P100G = 1.0; // in grams
    const double FOOD_1_PROTEIN_P100G = 3.0; // in grams
    
    // food #2 constants
    const string FOOD_2_NAME = "Tomato";
    const int FOOD_2_CALORIES_P100G = 27; // in calories
    const double FOOD_2_SOL_FIBER_P100G = 1.8; // in grams
    const double FOOD_2_SUGARS_P100G = 3.9; // in grams
    const double FOOD_2_PROTEIN_P100G = 1.3; // in grams
    
    // food #3 constants
    const string FOOD_3_NAME = "Lettuce";
    const int FOOD_3_CALORIES_P100G = 8; // in calories
    const double FOOD_3_SOL_FIBER_P100G = 1.0; // in grams
    const double FOOD_3_SUGARS_P100G = 0.6; // in grams
    const double FOOD_3_PROTEIN_P100G = 0.6; // in grams
    
    // food #4 constants
    const string FOOD_4_NAME = "Carrots";
    const int FOOD_4_CALORIES_P100G = 52; // in calories
    const double FOOD_4_SOL_FIBER_P100G = 3.6; // in grams
    const double FOOD_4_SUGARS_P100G = 6.1; // in grams
    const double FOOD_4_PROTEIN_P100G = 1.2; // in grams
    
    // food #3 constants
    const string FOOD_5_NAME = "Onions";
    const int FOOD_5_CALORIES_P100G = 64; // in calories
    const double FOOD_5_SOL_FIBER_P100G = 2.7; // in grams
    const double FOOD_5_SUGARS_P100G = 6.8; // in grams
    const double FOOD_5_PROTEIN_P100G = 1.8; // in grams
    
    //variable type declaration
    string recipeName, userInputStr, servings;
    int userInputInt, userInputIntServings;
    double totalSolFiber, totalCals, totalSugars, totalProtein;
    
    // initialize accumulator variables
    totalSolFiber = 0.;
    totalCals = 0.;
    totalSugars = 0.;
    totalProtein = 0;
    
    // print menu
    cout << "---------- List of Possible Ingredients ---------" << endl;
    cout << " Food #1: " << FOOD_1_NAME << endl;
    cout << " Food #2: " << FOOD_2_NAME << endl;
    cout << " Food #3: " << FOOD_3_NAME << endl;
    cout << " Food #4: " << FOOD_4_NAME << endl;
    cout << " Food #5: " << FOOD_5_NAME << endl << endl;
    
    // name of recipe ---------------------------------------------------------
    cout << "What are you calling this recipe? ";
    getline(cin, recipeName);
    
    // total servings ---------------------------------------------------------
    cout << "How many servings of ? ";
    getline(cin, servings);
    istringstream(servings) >> userInputIntServings;
    
    // now test each number to see if either is negative or out of range
    if ( (userInputIntServings < 1) || (userInputIntServings > 10) ){
        cout << "Error - enter 1 to 10 servings.\n";
        return 0;
    }
    
    // food #1 ---------------------------------------------------------
    cout << "How many grams of " << FOOD_1_NAME << "? ";
    getline(cin, userInputStr);
    istringstream(userInputStr) >> userInputInt;
    
    // now test each number to see if either is negative or out of range
    if ( (userInputInt < 0) || (userInputInt > 1000) ){
        cout << "Error - negative or out of range (>1000) grams detected.\n";
        return 0;
    }
    
    // update accumulators
    totalCals += userInputInt * (FOOD_1_CALORIES_P100G/100.);
    totalSolFiber += userInputInt * (FOOD_1_SOL_FIBER_P100G/100.);
    totalSugars += userInputInt * (FOOD_1_SUGARS_P100G/100.);
    totalProtein += userInputInt * (FOOD_1_PROTEIN_P100G/100.);
    
    // food #2 ---------------------------------------------------------
    cout << "How many grams of " << FOOD_2_NAME << "? ";
    getline(cin, userInputStr);
    istringstream(userInputStr) >> userInputInt;
    
    // now test each number to see if either is negative or out of range
    if ( (userInputInt < 0) || (userInputInt > 1000) ){
        cout << "Error - negative or out of range (>1000) grams detected.\n";
        return 0;
    }
    
    // update accumulators
    totalCals += userInputInt * (FOOD_2_CALORIES_P100G/100.);
    totalSolFiber += userInputInt * (FOOD_2_SOL_FIBER_P100G/100.);
    totalSugars += userInputInt * (FOOD_2_SUGARS_P100G/100.);
    totalProtein += userInputInt * (FOOD_2_PROTEIN_P100G/100.);
    
    // food #3 ---------------------------------------------------------
    cout << "How many grams of " << FOOD_3_NAME << "? ";
    getline(cin, userInputStr);
    istringstream(userInputStr) >> userInputInt;
    
    // now test each number to see if either is negative or out of range
    if ( (userInputInt < 0) || (userInputInt > 1000) ){
        cout << "Error - negative or out of range (>1000) grams detected.\n";
        return 0;
    }
    
    // update accumulators
    totalCals += userInputInt * (FOOD_3_CALORIES_P100G/100.);
    totalSolFiber += userInputInt * (FOOD_3_SOL_FIBER_P100G/100.);
    totalSugars += userInputInt * (FOOD_3_SUGARS_P100G/100.);
    totalProtein += userInputInt * (FOOD_3_PROTEIN_P100G/100.);
    
    // food #4 ---------------------------------------------------------
    cout << "How many grams of " << FOOD_4_NAME << "? ";
    getline(cin, userInputStr);
    istringstream(userInputStr) >> userInputInt;
    
    // now test each number to see if either is negative or out of range
    if ( (userInputInt < 0) || (userInputInt > 1000) ){
        cout << "Error - negative or out of range (>1000) grams detected.\n";
        return 0;
    }
    
    // update accumulators
    totalCals += userInputInt * (FOOD_4_CALORIES_P100G/100.);
    totalSolFiber += userInputInt * (FOOD_4_SOL_FIBER_P100G/100.);
    totalSugars += userInputInt * (FOOD_4_SUGARS_P100G/100.);
    totalProtein += userInputInt * (FOOD_4_PROTEIN_P100G/100.);
    
    // food #5 ---------------------------------------------------------
    cout << "How many grams of " << FOOD_5_NAME << "? ";
    getline(cin, userInputStr);
    istringstream(userInputStr) >> userInputInt;
    
    // now test each number to see if either is negative or out of range
    if ( (userInputInt < 0) || (userInputInt > 1000) ){
        cout << "Error - negative or out of range (>1000) grams detected.\n";
        return 0;
    }
    
    // update accumulators
    totalCals += userInputInt * (FOOD_5_CALORIES_P100G/100.);
    totalSolFiber += userInputInt * (FOOD_5_SOL_FIBER_P100G/100.);
    totalSugars += userInputInt * (FOOD_5_SUGARS_P100G/100.);
    totalProtein += userInputInt * (FOOD_5_PROTEIN_P100G/100.);
    
	// report results --------------------------------------------------
    cout << "\nNutrition for " << recipeName << "------------" << endl;
    cout << " Total Calories Per Serving: " 
    << totalCals/userInputIntServings << endl;
    cout << " Total Soluble Fiber Per Serving: " 
    << totalSolFiber/userInputIntServings << endl;
    cout << " Total Sugars Per Serving: " 
    << totalSugars/userInputIntServings << endl;
    cout << " Total Protein Per Serving: " 
    << totalProtein/userInputIntServings << endl;
    return 0;
    }
// ------------ OUTPUT PASTED FROM SCREEN ------------
/*
---------- List of Possible Ingredients ---------
 Food #1: Avocado
 Food #2: Tomato
 Food #3: Lettuce
 Food #4: Carrots
 Food #5: Onions

What are you calling this recipe? 3
How many servings of ? 11
Error - enter 1 to 10 servings.

---------- List of Possible Ingredients ---------
 Food #1: Avocado
 Food #2: Tomato
 Food #3: Lettuce
 Food #4: Carrots
 Food #5: Onions

What are you calling this recipe? LOL
How many servings of ? 3
How many grams of Avocado? 3
How many grams of Tomato? 3
How many grams of Lettuce? 3
How many grams of Carrots? 3
How many grams of Onions? 3

Nutrition for 3------------
 Total Calories Per Serving: 3.91
 Total Soluble Fiber Per Serving: 0.1085
 Total Sugars Per Serving: 0.184
 Total Protein Per Serving: 0.079

 ---------- List of Possible Ingredients ---------
 Food #1: Avocado
 Food #2: Tomato
 Food #3: Lettuce
 Food #4: Carrots
 Food #5: Onions

What are you calling this recipe? LOL
How many servings of ? 2
How many grams of Avocado? 300
How many grams of Tomato? 200
How many grams of Lettuce? 900
How many grams of Carrots? 250
How many grams of Onions? 100

Nutrition for LOL------------
 Total Calories Per Serving: 520
 Total Soluble Fiber Per Serving: 14.775
 Total Sugars Per Serving: 19.125
 Total Protein Per Serving: 10.9

 ---------- List of Possible Ingredients ---------
 Food #1: Avocado
 Food #2: Tomato
 Food #3: Lettuce
 Food #4: Carrots
 Food #5: Onions

What are you calling this recipe? LOL
How many servings of ? 3
How many grams of Avocado? 900
How many grams of Tomato? 900
How many grams of Lettuce? 900
How many grams of Carrots? 900
How many grams of Onions? 900

Nutrition for LOL------------
 Total Calories Per Serving: 1173
 Total Soluble Fiber Per Serving: 32.55
 Total Sugars Per Serving: 55.2
 Total Protein Per Serving: 23.7

 
---------- List of Possible Ingredients ---------
 Food #1: Avocado
 Food #2: Tomato
 Food #3: Lettuce
 Food #4: Carrots
 Food #5: Onions

What are you calling this recipe? LOL
How many servings of ? 4
How many grams of Avocado? 600
How many grams of Tomato? 600
How many grams of Lettuce? 600
How many grams of Carrots? 600
How many grams of Onions? 600

Nutrition for LOL------------
 Total Calories Per Serving: 586.5
 Total Soluble Fiber Per Serving: 16.275
 Total Sugars Per Serving: 27.6
 Total Protein Per Serving: 11.85

*/