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

public class SQLLoader {
	
	public static boolean insertValues(Connection connection, String fileURL) throws SQLException, IOException {
		ArrayList<String> insertList = new ArrayList<String>();
		Statement stmt = connection.createStatement() ;
		try{
			insertList = FileIO.readStatementsFromFile(fileURL);
			//System.out.println(insertList.get(2));
			}
		catch(IOException ex){
			System.out.println("IO Exception from SQLLoader");
			}
		//String testStmt = insertList.get(2);
		//stmt.executeUpdate(testStmt);
		
		
		try{
			for (int i = 0; i < insertList.size(); i++) {
				connection.setAutoCommit(false);
				System.out.println(insertList.get(i));
				stmt.executeUpdate(insertList.get(i));
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
