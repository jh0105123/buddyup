package com.kitri.util.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static Connection makeConnection() throws SQLException {
		return DriverManager.getConnection("jdbc:oracle:thin:@192.168.12.48:1521:xe", "kitri02", "kitri02");
	}
}
