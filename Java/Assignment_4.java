package cs001;

import java.util.Scanner;
public class Lab4{
   public static void main(String[] args){

      Scanner inputStream = new Scanner(System.in);

      String strUserInput;
      char userChoice, userCredits;
      int numYogurts, yogurtWallet = 0;

      while (true)      {      
         System.out.println("Menu: \n P (process Purchase) \n S (Shut down)");
         strUserInput = inputStream.nextLine();
         userChoice = strUserInput.charAt(0);

         if  ((Character.toUpperCase(userChoice) != 'P') && (Character.toUpperCase(userChoice) != 'S')){
            System.out.println("*** Use P or S, please. *** " + userChoice);
         }

         System.out.println("Your choice:" + userChoice);

         if ((Character.toUpperCase(userChoice) == 'P') ) 
         {
            System.out.println("How many yogurts would you like to buy?");
            strUserInput = inputStream.nextLine();
            numYogurts = Integer.parseInt(strUserInput);

            yogurtWallet += numYogurts;

            System.out.println("You just earned " + numYogurts + " stamps and have a total of " + yogurtWallet + " to use");

            if (yogurtWallet >= 10)
            {
               System.out.println("You qualify for a free yogurt. Would you like to use your credits? (Y or N)");
               strUserInput = inputStream.nextLine();
               userCredits = strUserInput.charAt(0);

               if ((userCredits == 'Y') || (userCredits == 'y'))
               {
                  yogurtWallet -= 10;
                  System.out.println("You have just used 10 credits and have " + yogurtWallet + " left. Enjoy your free yogurt.");
               }
            }
         } else{
            System.out.println("You requested for a shutdown");
            System.out.println("Goodbye!");
            break; 
         }


         if ((userChoice != 'p') && (userChoice != 'P') && (userChoice != 's') && (userChoice != 'S'))
            System.out.println("*** Use P or S, please. ***");


         {
            System.out.println("Goodbye!");
            break;
         }

      }
   }
}
