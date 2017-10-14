package cs001;

import java.util.*;

public class Lab5 {

   // main method
   public static void main (String[] args) {
      char keyCharacter = getKeyCharacter();
      String theString = getString();    
      maskCharacter(theString, keyCharacter);
      countKey(theString, keyCharacter);
      removeCharacter(theString, keyCharacter);
   }

   // get keyCharacter
   public static char getKeyCharacter(){

      Scanner inputStream = new Scanner(System.in);
      boolean stop = false;
      String firstPrompt, strKeyCharacter;
      char keyCharacter = ' ';

      while(!stop){

         firstPrompt = "Please enter a character to act as key: ";
         System.out.println(firstPrompt);
         strKeyCharacter = inputStream.nextLine();

         //check if the input contains only 1 character
         boolean isSingleChar = (strKeyCharacter.length() == 1);
         //check if the input character is within the ASCII code of 97 (a) to 122 (z)
         boolean isValidChar = 
               strKeyCharacter.charAt(0) >= 97 &&
               strKeyCharacter.charAt(0) <= 122;

               if(isSingleChar && isValidChar){
                  keyCharacter = strKeyCharacter.charAt(0);
                  stop = true;
               }

      }

      return keyCharacter;
   }

   // declare final = 4 to be constant
   public static final int minimumLength = 4;

   // get theString
   public static String getString() {
      Scanner inputStream = new Scanner(System.in);
      String secondPrompt, theString;
      do {
         secondPrompt = "Please enter a phrase or sentence greater or equal to 4 characters: ";
         System.out.print(secondPrompt);
         theString = inputStream.nextLine();
         System.out.print('\n');
      } while (theString.length() < minimumLength || theString == null || theString.length() == 0);
      inputStream.close();
      return theString;
   }

   // mask keyCharacter with $
   public static String maskCharacter(String theString, char keyCharacter) {
      theString = theString.replace(keyCharacter, '$');
      System.out.println("String with " + " '" + keyCharacter + "' " + " masked.");
      System.out.println(theString + '\n');
      return theString;
   }

   // count number of times keyCharacter occurs in theString
   public static void countKey(String theString, char keyCharacter) {
      int countChar = 0;
      for (int charTimes = 0; charTimes < theString.length(); charTimes++) {
         if (theString.charAt(charTimes) == keyCharacter) {
            countChar++;
         }
      }
      System.out.println( "The key character occurs " + countChar + " times. \n");
      return;
   }

   // remove keyCharacter from theString
   public static void removeCharacter(String theString, char keyCharacter) {
      theString = theString.replace(String.valueOf(keyCharacter), "");
      System.out.println("String with " + "'" + keyCharacter + "' removed: ");
      System.out.println(theString);
      return;
   }
}
/* ------------------- Sample Run --------------------
Please enter a character to act as key: 
a
Please enter a phrase or sentence greater or equal to 4 characters: Samara's coo
l

String with  'a'  masked.
S$m$r$'s cool

The key character occurs 3 times. 

String with 'a' removed: 
Smr's cool
---------------------- End Sample Run ----------------*/