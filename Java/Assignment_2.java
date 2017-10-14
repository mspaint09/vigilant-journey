package cs001;

public class Lab2
{
   public static void main(String[] args)
   {
      int myId;
      int numLet;

      myId = 20306996;
      numLet = 6;
      System.out.println( "My first name is Samara ");
      System.out.println( "My Student ID is " 
            + myId );
      System.out.println( "The number of characters in my first name is " 
            + numLet );
      System.out.println( "Expression #1: " 
            + (myId % 7) );
      System.out.println( "Expression #2: " 
            + (numLet % 5) );
      System.out.println( "Expression #3: " 
            + (myId / (numLet + 900)));
      System.out.println( "Expression #4: " 
            + (1+2+3+4+5+numLet) );
      System.out.println( "Expression #5: " 
            + (myId % 7) );

   }
}
/* -------------------------- Run ----------------------
My first name is Samara 
My Student ID is 20306996
The number of characters in my first name is 6
Expression #1: 3
Expression #2: 1
Expression #3: 22413
Expression #4: 21
Expression #5: 3
------------------------------------------------------- */