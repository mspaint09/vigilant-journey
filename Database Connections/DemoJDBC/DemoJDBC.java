package dbms.vt;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;

public class DemoJDBC {
	
	// Constant variables used for setting connection with DBMS
	public final static String PORT = "5432";
	public final static String DATABASE_NAME = "postgres";
	public final static String USERNAME = "postgres";
	public final static String PSSWD = "";
	public final static String URL = "jdbc:postgresql://localhost:" + PORT + "/" + DATABASE_NAME;
	public final static String QUERY_DML_URL = "/Path/to/My/SQL_state_query.txt";
				
	// The main method which will be executed first, once the application is launched
	public static void main(String[] args) throws SQLException, IOException {
		
		// Setup JDBC Connection, and set auto-commit off to avoid unexpected commit
		Connection connection = DriverManager.getConnection(URL, USERNAME, PSSWD);
		connection.setAutoCommit(false);
		Statement stmt = connection.createStatement();
		
		// Execute creating table query; if rowAffected is not 0, something went wrong
		int rowsAffected = stmt.executeUpdate(Data.TABLES);
		if (rowsAffected != 0)	System.err.println("Error on: "+ Data.TABLES);
		System.out.println("Successfully created all tables");
		
		// For each insert statement in Data.VALUES
		// insert it into the DBMS
		// if rowAffected is not 1, something went wrong as nothing has been inserted into DBMS
		for (int i=0;i< Data.VALUES.length; i++){
			rowsAffected = stmt.executeUpdate(Data.VALUES[i]);
			if (rowsAffected != 1)	System.err.println("Error on: "+ Data.VALUES[i]);
		}
		System.out.println("Successfully inserted all values");
		
		// Commit so that all previous DDL got saved into DBMS
		connection.commit();
		
		// For each query from an external file at QUERY_DML_URL
		// execute each of those, and output in a HTML file
		ArrayList<String> queries = FileIO.readStatementsFromFile(QUERY_DML_URL);
		ResultSet rs = null;
		for (String query : queries){
			rs = stmt.executeQuery(query);
			FileIO.writeToHTML(query, rs);
		}
		System.out.println("Successfully executed and outputed all results.");
		connection.commit();
		connection.setAutoCommit(true);
		
		// Close all opening portals connected to DBMS
		if(rs != null) 
			rs.close();
		stmt.close();
		connection.close();
	}
}
