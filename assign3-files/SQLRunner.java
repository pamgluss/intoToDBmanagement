package dev.pg;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;

public class SQLRunner {
	// Return true if successfully execute and output data in HTML, false otherwise
	public static boolean execute(Connection connection, String fileURL){
		try{
			// Set auto commit to False to start (even though we REALLY shouldn't be committing anything here.
			connection.setAutoCommit(false);
			// Create the statement instance
			Statement stmt = connection.createStatement();
			ArrayList<String> queryList = null;
			try {
				// Store the queries in the ArrayList
				queryList = FileIO.readStatementsFromFile(fileURL);
			} catch(IOException e){ e.printStackTrace(); }
			
			for(String input : queryList){
				
				ResultSet rs = stmt.executeQuery(input);
				try {
					FileIO.writeToHTML(input, rs);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			return true;
		} catch (SQLException ex){
			System.err.println("Something went wrong: " + ex.getMessage());
			try {
				connection.rollback();
				connection.setAutoCommit(true);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return false;
		}
			
	}

}
