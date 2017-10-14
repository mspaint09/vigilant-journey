package cs001;

public class week4cw
{
   private static final int LOW_VAL = 0;

   public static void main(String[] args)
   {
      // make these symbolic constants (finals) so if we wish to // we can do so quickly up here rather than muck around in final int LOW_VAL = 15;
      final int HIGH_VAL = 1001;
      int sum; // holds the answer
      int k; // loop counter
      sum = 0; // start it off at 0 - we will add to it
      // loop, adding the ODD numbers
      for ( k = LOW_VAL; k <= HIGH_VAL; k = k + 2 )
      {
         sum = sum + k;
      }
      System.out.println("The sum of the odd numbers between " + " and " + HIGH_VAL + ", inclusive, is " + sum + "\n");
   }
}
