/*****************************************************/
/* CS31A Winter
2017 */
/* HW4: JDBC */
/* Student Name: Samara Miramontes */
/* SID: 20306996 */
/****************************************************/

package dev.Samara_Miramontes;
import java.io.IOException;
import java.sql.*;

public class MyJDBC {
	public final static String PORT = "5432";
	public final static String DATABASE_NAME = "postgres";
	public final static String USERNAME = "postgres";
	public final static String PSSWD = "berkeley";
	public final static String URL = "jdbc:postgresql://localhost" +  "/" + DATABASE_NAME;
	public final static String CREATE_TABLES_DDL_URL = "C:/Users/Ambrosio/Desktop/Assignment4/Assignment4/mondial-schema.txt";
	public final static String INSERT_VALUES_DDL_URL = "C:/Users/Ambrosio/Desktop/Assignment4/Assignment4/mondial-inputs.txt";
	public final static String QUERY_DML_URL = "C:/Users/Ambrosio/Desktop/Assignment4/Assignment4/mondial-queries.txt";
	
	public static void main(String[] args) throws SQLException, IOException, ClassNotFoundException {
		//Class.forName("org.postgresql.Driver");
		Connection connection = DriverManager.getConnection(URL, USERNAME, PSSWD);
		
		/*if(SQLBuilder.createTables(connection, CREATE_TABLES_DDL_URL)) 
			System.out.println("Successfully created all tables.");
		*/
		/*if(SQLLoader.insertValues(connection, INSERT_VALUES_DDL_URL))
			System.out.println("Successfully inserted all values.");
		*/
		if(SQLRunner.execute(connection, QUERY_DML_URL))
			System.out.println("Successfully executed and outputed all results.");
		
		connection.close();
	}

}
