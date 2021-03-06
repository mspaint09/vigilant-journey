package dbms.vt;
import java.sql.*;

public class SimpleJDBC {

	/* This simple JDBC program shows you how to:  
	 * 	1. Connect to a PostgreSQL database
	 *  2. Create a statement and execute a SQL query
	 *  3. Display returned output from DBMS
	 */
	
	// The main method is the very first one got executed.
	// ClassNotFoundException and SQLException are errors that will be thrown
	// by JDBC if it cannot locate or connect a specified database.
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		
		// Tell JDBC what type of database we want to connect (ie: PostgreSQL)
		Class.forName("org.postgresql.Driver");
		
		// Setup all necessary parameters for a database connection
		String port = "5432";
		String databaseName = "postgres";
		String username = "postgres";
		String password = "";
		
		// Setup a path to our database with previously configured parameters
		String url = "jdbc:postgresql://localhost:" + port + "/" + databaseName;
		
		// Start a connection
		Connection connection = DriverManager.getConnection(url, username, password);
		
		/**
		 * Here is another valid way to connect to your database
		 * 
		 * Class.forName("org.postgresql.Driver");
		 * String port = "5432";
		 * String databaseName = "postgres";
		 * String url = "jdbc:postgresql://localhost:" + port + "/" + databaseName;
		 * 
		 * // Create a property for this connection
		 * Properties conProps = new Properties();
		 * conProps.setProperty("user","postgres");
		 * conProps.setProperty("password","");
		 * conProps.setProperty("ssl","true");
		 * Connection connection = DriverManager.getConnection(url, conProps);
		 * 
		 * */
		
		// Create a statement which will be used to interact with the database
		Statement stmt = connection.createStatement();

		// Perform a SQL Query:
		// Select all the table names from the database
		ResultSet results = stmt.executeQuery ("SELECT table_name FROM information_schema.tables WHERE table_schema='public' AND table_type='BASE TABLE'");

		// Iterate through the result and print out the table names
		while (results.next())							// As long as 'results' still have more data, keep looping
		  System.out.println (results.getString (1));	// this 'results' has only 1 column which is indexed as '1'
		
		stmt.close();
		connection.close();
	}
}

