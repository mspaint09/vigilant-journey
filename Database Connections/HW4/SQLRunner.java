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

public class SQLRunner {
	
	public static boolean execute(Connection connection, String fileURL) throws SQLException, IOException {
		ArrayList<String> queryList = new ArrayList<String>();
		Statement stmt = connection.createStatement() ;
		String query; 
		ResultSet rs;
		try{
			queryList = FileIO.readStatementsFromFile(fileURL);
			System.out.println(queryList.get(2));
		}
			catch(IOException ex){
				System.out.println("IO Exception from SQLbuilder");
			}
		while(queryList.get(2)!=null){
			try{
				query = queryList.get(2);
				rs = stmt.executeQuery(query);
				FileIO.writeToHTML(query, rs);
				System.out.println(queryList.get(2));
			}
				catch(IOException ex){
					System.out.println("IO Exception from SQLLoader");
				}
		}
		
		stmt.close();

		return true;
		}
				
	}
