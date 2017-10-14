package cs001;

import java.util.Scanner;

public class Lab6
{
   public static void main(String[] args)
   {
      int winnings, input_bet; //amount end
      boolean pleaseend = false;
      TripleString roll;
      while (pleaseend == false) //check if they want to quit
      {
         input_bet = getBet();
         roll = pull(); //pulling slot machine & get triplestring if input_bet is 0 then triggered to -1
         winnings = getmultiplier(roll, input_bet); //figure out winnings
         display(roll, winnings); //display result to user
         if (winnings == -1) //ends loop if winnings are -1 
         {
            pleaseend = true;
         } 
      }
   }
   public static int getBet()
   {
      // output directions get bet and store in class variable
      int input_bet = 0;
      boolean valid;
      valid = false;
      System.out.println("Place a bet between 1 and 100 or hit 0 to quit.");
      while (!valid)
      {
         Scanner user_input = new Scanner(System.in);
         input_bet = user_input.nextInt();
         if (input_bet >= 0 && input_bet <= 100)
         {
            valid = true;

         } 
         else
            // if not valid then user asked to try again
         {
            System.out.println("Make sure your bet is between 1 and 100. "
                  + "Try again.");
         }
      }
      return input_bet;
   }
   public static TripleString pull()
   {
      // instantiate triple string & reference random string
      TripleString user_role;
      user_role = new TripleString();
      String str1 = randString(), str2 = randString(), str3 = randString();
      user_role.setstrings(str1, str2, str3);
      return user_role; //outputs triplestring object as user roll
   }

   private static String randString()
   {
      String strvalue = "";
      double randvalue = Math.random(); //getting random variable
      if (randvalue <= 0.5)
      {
         strvalue = "BAR";
         return strvalue;
      } 
      else if (randvalue <= .75)
      {
         strvalue = "cherries";
         return strvalue;
      } 
      else if (randvalue <= .875)
      {
         strvalue = "space";
         return strvalue;
      } else
      {
         strvalue = "7";
         return strvalue;
      }
   }

   public static int getmultiplier(TripleString result, int bet)
   {
      // multiplier based on matches
      int multiplier = 0, winnings = 0;
      if (result.getstr1() == "7" && result.getstr2() == "7"
            && result.getstr3() == "7")
      {
         multiplier = 100;
      } 
      else if (result.getstr1() == "BAR" && result.getstr2() == "BAR"
            && result.getstr3() == "BAR")
      {
         multiplier = 50;
      } 
      else if (result.getstr1() == "cherries"
            && result.getstr2() == "cherries" && result.getstr3() == "cherries")
      {
         multiplier = 30;
      } 
      else if (result.getstr1() == "cherries"
            && result.getstr2() == "cherries" && result.getstr3() != "cherries")
      {
         multiplier = 15;
      } 
      else if (result.getstr1() == "cherries"
            && result.getstr2() != "cherries")
      {
         multiplier = 5;
      } 
      else
      {
         multiplier = 0;
      }
      winnings = bet * multiplier; //multiply what they bet by multiplier
      if (bet == 0) //if input is 0 then winnings are -1 
         //to prompt end of program
      {
         winnings = -1;
      }
      return winnings;
   }

   public static void display(TripleString roll, int winnings)
   {
      //displays winnings or lost

      if (winnings == 0)
      {
         System.out.println("You rolled: " + roll.getstr1() + " " + 
               roll.getstr2() + " " + roll.getstr3());
         System.out.println("Sorry you lost.\n");
      } 
      else if (winnings == -1)
      {
         System.out.println("Thanks for playing!");
      }
      else
      {
         System.out.println("You rolled: " + roll.getstr1() + " " + 
               roll.getstr2() + " " + roll.getstr3());
         System.out.println("You won: $" + winnings + "\nNice job!\n");
      }
   }
}
//holds slotmachine result
class TripleString
{
   // member data
   private String string1;
   private String string2;
   private String string3;
   int max_len;

   // constructor
   TripleString()
   {
      string1 = "";// (int)(Math.random()*100);
      string2 = "";
      string3 = "";
      max_len = 20;
   }

   // check validity of string
   private boolean validString(String str)
   {
      if (str.length() < max_len && str != "")
      {
         return true;
      } 
      else
      {
         return false;
      }
   }
   //set strings & check validity
   public boolean setstrings(String str1, String str2, String str3)
   {
      boolean isvalid1, isvalid2, isvalid3;
      isvalid1 = validString(str1);
      isvalid2 = validString(str2);
      isvalid3 = validString(str3);
      if (isvalid1 == true && (isvalid2 == true && (isvalid3 == true)))
      {
         string1 = str1;
         string2 = str2;
         string3 = str3;
         return true;
      } 
      else
      {
         return false;
      }
   }
   //private string variables
   public String getstr1()
   {
      return string1;
   }

   public String getstr2()
   {
      return string2;
   }

   public String getstr3()
   {
      return string3;
   }
}
