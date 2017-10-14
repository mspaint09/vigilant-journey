package cs001;

public class Lab7
{
   public static void main(String[] args)
   {
      iTunes song1, song2, song3, song4;
      song1 = new iTunes();
      song2 = new iTunes();
      song3 = new iTunes();
      song4 = new iTunes();
      //Song 1 section
      System.out.println("---Song 1 Test---");
      song1.display();
      song1.setname("LOL lalala");
      song1.display();
      System.out.println("-End Song 1 Test-\n");
      //Song 2 section
      System.out.println("---Song 2 Test---");
      song2.addsong("cool song", "hahaha", 89, 12000);
      song2.display();
      song2.setbitrate(156);
      song2.display();
      System.out.println("-End Song 2 Test-\n");
      //Song 3 section
      System.out.println("---Song 3 Test---");
      song3.setname("do re mi");
      song3.display();
      song3.addsong("MDR", "chill song", 77, 1912);
      song3.display();
      System.out.println("-End Song 3 Test-\n");
      //Song 4 section
      System.out.println("---Song 4 Test---");
      song4.setartist("xcore");
      song4.setplaytime(1049);
      song4.addsong("edgy music", "knew it before famous", 99, 36000);
      song4.display();
      song4.addsong("Scene Music", "Millionaires", 179, 9891);
      song4.display();
      System.out.println("-End Song 4 Test-\n");
      System.out.println("--End of Song Tests--");
      //if statement to test invalid values
      if (!song4.setbitrate(1)) 
      {
         System.out.println("Bitrate for song 4 " +
               "not within parameters");
      }
      else
      {
         System.out.println("Bitrate for song 4 is " +
               "within parameters");
      }
      if (!song2.setplaytime(200))
      {
         System.out.println("Play time for song 2 is " +
               "not within parameters");
      }
      else
      {
         System.out.println("It worked! The play time for song 2 is " +
               "within parameters");
      }
      System.out.println("Song 1 Bitrate: " + song1.getbitrate());
      System.out.println("Song 3 Name: " + song3.getname());
      System.out.println("Song 4 Artist: " + song4.getartist());
   }
}

class iTunes
{
   private String name;
   private String artist;
   private int bitrate;
   private int totaltime;
   static int minbitrate = 64;
   static int maxbitrate = 705;
   static int min_str_length = 1;
   static int max_str_length = 80;
   static int min_play_time = 1000;
   static int max_play_time = 1000*60*60;
   static int default_bitrate = 64;
   static int default_playtime = 1000;
   static String default_string = "(undefined)";
   iTunes()
   {
      name = default_string;
      artist = default_string;
      bitrate = default_bitrate;
      totaltime = default_playtime;
   }
   //check if bitrate is within parameters
   private boolean validbitrate(int bitcheck)
   {
      if (bitcheck <= maxbitrate && bitcheck >= minbitrate)
      {
         return true;
      }
      else
      {
         return false;
      }
   }
   //check if artist or song name is within parameters
   private boolean validstr(String strcheck)
   {
      if (strcheck.length() >= min_str_length && 
            strcheck.length() <= max_str_length)
      {
         return true;
      }
      else
      {
         return false;
      }
   }
   //check if play time is within parameters
   private boolean validplaytime(int playcheck)
   {
      if (playcheck >= min_play_time && playcheck <= max_play_time)
      {
         return true;
      }
      else
      {
         return false;
      }
   }
   //access
   public String getname()
   {
      return name;
   }
   public String getartist()
   {
      return artist;
   }
   public int getbitrate()
   {
      return bitrate;
   }
   public int getplaytime()
   {
      return totaltime;
   }
   //mutator checks validity before assignment
   public boolean setname(String client_name)
   {
      if (validstr(client_name) == true)
      {
         name = client_name;
         return true;
      }
      else
      {
         return false;
      }
   }
   public boolean setartist(String client_artist)
   {
      if (validstr(client_artist) == true)
      {
         artist = client_artist;
         return true;
      }
      else
      {
         return false;
      }
   }
   public boolean setbitrate(int client_bitrate)
   {
      if (validbitrate(client_bitrate) == true)
      {
         bitrate = client_bitrate;
         return true;
      }
      else
      {
         return false;
      }
   }
   public boolean setplaytime(int client_playtime)
   {
      if (validplaytime(client_playtime) == true)
      {
         totaltime = client_playtime;
         return true;
      }
      else
      {
         return false;
      }
   }
   //constructor allows to change members at once
   public boolean addsong(String client_name, String client_artist, 
         int client_bitrate, int client_playtime)
   {
      setname(client_name);
      setartist(client_artist);
      setbitrate(client_bitrate);
      setplaytime(client_playtime);
      return true;
   }
   public String toString()
   {
      String allsonginfo;
      allsonginfo = "Song: " + name + "\nArtist: " + artist + 
            "\nPlay time: " + totaltime + " milliseconds" + "\nBitrate: " + 
            bitrate + "k"; 
      return allsonginfo;   
   }
   public void display()
   {
      System.out.println(toString());
      System.out.println("---------");
   }
}
