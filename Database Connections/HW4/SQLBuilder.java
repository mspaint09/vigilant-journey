/*****************************************************/
/* CS31A Winter
2017 */
/* HW4: JDBC */
/* Student Name: Samara Miramontes */
/* SID: 20306996 */
/****************************************************/

package dev.Samara_Miramontes;
import java.sql.*;
import java.io.*;
import java.util.*;

 

//method createTables(Connection connection, String fileURL)

//tableArrayList = readStatementsFromFile(fileURL)

//iterate through List for each table

//returns True if done or False

public class SQLBuilder {

	public static boolean createTables(Connection connection, String fileURL) throws SQLException, IOException {
		ArrayList<String> tableList = new ArrayList<String>();
		Statement stmt = connection.createStatement() ;
		try{
			tableList = FileIO.readStatementsFromFile(fileURL);
			System.out.println(tableList.get(3));
			}
		catch(IOException ex){
			System.out.println("IO Exception from SQLbuilder");
			}
		//String testStmt = tableList.get(3);
		//stmt.executeUpdate(testStmt);

		try{
			for (int i = 0; i < tableList.size(); i++) {
				connection.setAutoCommit(false);
				stmt.executeUpdate(tableList.get(i));
				connection.commit();
				connection.setAutoCommit(true);
				}
			}
		catch(SQLException ex){
			System.err.println("sql exception " + ex.getMessage());
			connection.rollback();
			connection.setAutoCommit(true);
			}
		stmt.close();

		return true;
		}
				
	}
