package com.kitri.util.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	static{//����ƽ ���. ����ƽ�� ȣ��ɶ� �����. 
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
//			System.out.println("����̹� �ε� ����!!!");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
//			System.out.println("����̹� �ε� ����");
		}
	}
	
	public static Connection makeConnection() throws SQLException {
		
		return DriverManager.getConnection("jdbc:oracle:thin:@192.168.12.48:1521:xe", "kitri02", "kitri02");
		
	}
	
}

