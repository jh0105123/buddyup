package com.kitri.util.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	static{//스태틱 블록. 스태틱이 호출될때 실행됨. 
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("드라이버 로딩 성공!!!");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.out.println("드라이버 로딩 실패");
		}
	}
	
	public static Connection makeConnection() throws SQLException {
		
		return DriverManager.getConnection("jdbc:oracle:thin:@192.168.12.48:1521:xe", "kitri02", "kitri02");
		
	}
	
}

