package dev.pg;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;

public class SQLLoader {
	// Returns true if successfully inserts data into DB, false otherwise
	public static boolean insertValues(Connection connection, String fileURL){
		try{
			connection.setAutoCommit(false);
			Statement stmt = connection.createStatement();
			ArrayList<String> inputValueList = null;
			try {
				inputValueList = FileIO.readStatementsFromFile(fileURL);
			} catch(IOException e){ e.printStackTrace(); }
			
			for(String input : inputValueList){
				stmt.executeUpdate(input);
				connection.commit();

			}
			connection.setAutoCommit(true);
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
