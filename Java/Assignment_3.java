package cs001A;

// CS 1A Lab 3 Framework
import java.util.Scanner;
public class LAB3
{
   // food #1 constants
   static final String FOOD_1_NAME = "avocado";
   static final int FOOD_1_CALORIES_P100G = 240;  // in calories
   static final double FOOD_1_SOL_FIBER_P100G = 10.1;   // in grams
   static final double FOOD_1_SUGARS_P100G = 1.0;   // in grams
   static final double FOOD_1_PROTEIN_P100G = 3.0;   // in grams
   // food #2 constants
   static final String FOOD_2_NAME = "tomato";
   static final int FOOD_2_CALORIES_P100G = 27;  // in calories
   static final double FOOD_2_SOL_FIBER_P100G = 1.8;   // in grams
   static final double FOOD_2_SUGARS_P100G = 3.9;   // in grams
   static final double FOOD_2_PROTEIN_P100G = 1.3;   // in grams
   // food #3 constants
   static final String FOOD_3_NAME = "lettuce";
   static final int FOOD_3_CALORIES_P100G = 8;  // in calories
   static final double FOOD_3_SOL_FIBER_P100G = 1.;   // in grams
   static final double FOOD_3_SUGARS_P100G = 0.6;   // in grams
   static final double FOOD_3_PROTEIN_P100G = 0.6;   // in grams
   // food #4 constants
   static final String FOOD_4_NAME = "carrots";
   static final int FOOD_4_CALORIES_P100G = 52;  // in calories
   static final double FOOD_4_SOL_FIBER_P100G = 3.6;   // in grams
   static final double FOOD_4_SUGARS_P100G = 6.1;   // in grams
   static final double FOOD_4_PROTEIN_P100G = 1.2;   // in grams
   // food #5 constants
   static final String FOOD_5_NAME = "onions";
   static final int FOOD_5_CALORIES_P100G = 64;  // in calories
   static final double FOOD_5_SOL_FIBER_P100G = 2.7;   // in grams
   static final double FOOD_5_SUGARS_P100G = 6.8;   // in grams
   static final double FOOD_5_PROTEIN_P100G = 1.8;   // in grams
   static final String INDENT = "   ";
   static final String SEPARATOR = "\n";
   public static void main(String[] args)
   {
      String recipeName, userInputStr;
      int userInputInt;
      double totalSolFiber, totalCals, totalProtein, totalSugar, totalServings;
      Scanner inputStream = new Scanner(System.in);
      // initialize accumulator variables
      totalSolFiber  = FOOD_1_SOL_FIBER_P100G + FOOD_2_SOL_FIBER_P100G + FOOD_3_SOL_FIBER_P100G + FOOD_4_SOL_FIBER_P100G + FOOD_5_SOL_FIBER_P100G;
      totalCals =  FOOD_1_CALORIES_P100G + FOOD_2_CALORIES_P100G + FOOD_3_CALORIES_P100G + FOOD_4_CALORIES_P100G + FOOD_5_CALORIES_P100G;
      totalProtein = FOOD_1_PROTEIN_P100G + FOOD_2_PROTEIN_P100G + FOOD_3_PROTEIN_P100G + FOOD_4_PROTEIN_P100G + FOOD_5_PROTEIN_P100G ;
      totalSugar = FOOD_1_SUGARS_P100G + FOOD_2_SUGARS_P100G + FOOD_3_SUGARS_P100G + FOOD_4_SUGARS_P100G + FOOD_5_SUGARS_P100G ;
      // print menu
      System.out.println("нннннннннн List of Possible Ingredients ннннннннн");
      System.out.println(INDENT + "Food #1: " + FOOD_1_NAME);
      System.out.println(INDENT + "Food #2: " + FOOD_2_NAME);
      System.out.println(INDENT + "Food #3: " + FOOD_3_NAME);
      System.out.println(INDENT + "Food #4: " + FOOD_4_NAME);
      System.out.println(INDENT + "Food #5: " + FOOD_5_NAME + SEPARATOR);
      // name of recipe
      System.out.print("What are you calling this recipe ? ");
      recipeName  = inputStream.nextLine();
      // servings  ннннннннннннннннннннннннннннннннннннннннннннннннннннннннн
      System.out.print("How many servings of " + recipeName + "? ");
      userInputStr = inputStream.nextLine();
      totalServings = Integer.parseInt(userInputStr);
      // food #1 ннннннннннннннннннннннннннннннннннннннннннннннннннннннннн
      System.out.print("How many grams of " + FOOD_1_NAME + "? ");
      userInputStr = inputStream.nextLine();
      userInputInt = Integer.parseInt(userInputStr);
      // update accumulators
      totalCals += userInputInt * (FOOD_1_CALORIES_P100G / 100.);
      totalSolFiber  += userInputInt * (FOOD_1_SOL_FIBER_P100G / 100.);
      totalProtein  += userInputInt * (FOOD_1_PROTEIN_P100G / 100.);
      totalSugar  += userInputInt * (FOOD_1_SUGARS_P100G / 100.);
      // food #2 ннннннннннннннннннннннннннннннннннннннннннннннннннннннннн
      System.out.print("How many grams of " + FOOD_2_NAME + "? ");
      userInputStr = inputStream.nextLine();
      userInputInt = Integer.parseInt(userInputStr);
      // update accumulators
      totalCals += userInputInt * (FOOD_2_CALORIES_P100G / 100.);
      totalSolFiber  += userInputInt * (FOOD_2_SOL_FIBER_P100G / 100.);
      totalProtein  += userInputInt * (FOOD_2_PROTEIN_P100G / 100.);
      totalSugar  += userInputInt * (FOOD_2_SUGARS_P100G / 100.);
      // food #3 ннннннннннннннннннннннннннннннннннннннннннннннннннннннннн
      System.out.print("How many grams of " + FOOD_3_NAME + "? ");
      userInputStr = inputStream.nextLine();
      userInputInt = Integer.parseInt(userInputStr);
      // update accumulators
      totalCals += userInputInt * (FOOD_3_CALORIES_P100G / 100.);
      totalSolFiber  += userInputInt * (FOOD_3_SOL_FIBER_P100G / 100.);
      totalProtein  += userInputInt * (FOOD_3_PROTEIN_P100G / 100.);
      totalSugar  += userInputInt * (FOOD_3_SUGARS_P100G / 100.);
      // food #4 ннннннннннннннннннннннннннннннннннннннннннннннннннннннннн
      System.out.print("How many grams of " + FOOD_4_NAME + "? ");
      userInputStr = inputStream.nextLine();
      userInputInt = Integer.parseInt(userInputStr);
      // update accumulators
      totalCals += userInputInt * (FOOD_4_CALORIES_P100G / 100.);
      totalSolFiber  += userInputInt * (FOOD_4_SOL_FIBER_P100G / 100.);
      totalProtein  += userInputInt * (FOOD_4_PROTEIN_P100G / 100.);
      totalSugar  += userInputInt * (FOOD_4_SUGARS_P100G / 100.);
      // food #5 ннннннннннннннннннннннннннннннннннннннннннннннннннннннннн
      System.out.print("How many grams of " + FOOD_5_NAME + "? ");
      userInputStr = inputStream.nextLine();
      userInputInt = Integer.parseInt(userInputStr);
      // update accumulators
      totalCals += userInputInt * (FOOD_5_CALORIES_P100G / 100.);
      totalSolFiber  += userInputInt * (FOOD_5_SOL_FIBER_P100G / 100.);
      totalProtein  += userInputInt * (FOOD_5_PROTEIN_P100G / 100.);
      totalSugar  += userInputInt * (FOOD_5_SUGARS_P100G / 100.);
      inputStream.close();
      // report results нннннннннннннннннннннннннннннннннннннннннннннннннн
      System.out.println("\nNutrition for " + recipeName + " per serving " + "нннннннннннн");
      System.out.println(INDENT + "Calories: " + totalCals/totalServings);
      System.out.println(INDENT + "Soluble Fiber: " + totalSolFiber/totalServings);
      System.out.println(INDENT + "Sugar: " + totalSugar/totalServings);
      System.out.println(INDENT + "Protein : " + totalProtein/totalServings);
   }
}

/*

нннннннннн List of Possible Ingredients ннннннннн
Food #1: avocado
Food #2: tomato
Food #3: lettuce
Food #4: carrots
Food #5: onions

What are you calling this recipe ? Salad
How many servings of Salad? 5
How many grams of avocado? 100
How many grams of tomato? 200
How many grams of lettuce? 500
How many grams of carrots? 100
How many grams of onions? 100

Nutrition for Salad per serving нннннннннннн
Calories: 168.2
Soluble Fiber: 8.84
Sugar: 8.62
Protein : 3.9

*/