package dev.pg;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;

public class SQLBuilder {
	// Returns true if successfully creates tables, false otherwise
	public static boolean createTables(Connection connection, String fileURL){
		// Create the statement. First set auto commit off
		try{connection.setAutoCommit(false);
		Statement stmt = connection.createStatement();
		// Create the list of inputs from the file
		ArrayList<String> tableSchema = null;
		try {
			tableSchema = FileIO.readStatementsFromFile(fileURL);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// Drop statement to clear away old tables when testing code
		stmt.executeUpdate("DROP SCHEMA public CASCADE; CREATE SCHEMA public; GRANT ALL ON SCHEMA public to postgres; GRANT ALL ON SCHEMA public TO PUBLIC");
		
		for (String query : tableSchema){
			stmt.executeUpdate(query);
			connection.commit();
		} // end of For In loop
		connection.setAutoCommit(true);
		DatabaseMetaData meta = connection.getMetaData();
		ResultSet res = meta.getTables(null, null, null, 
			     new String[] {"TABLE"});

		stmt.close();
		return true;
		
		} catch(SQLException ex){
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
