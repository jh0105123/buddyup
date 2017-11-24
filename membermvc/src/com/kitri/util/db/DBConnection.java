package com.kitri.util.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
<<<<<<< HEAD:membermvc/src/com/kitri/util/db/DBConnection.java

	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
=======
	static{//����ƽ ���. ����ƽ�� ȣ��ɶ� �����. 
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
//			System.out.println("����̹� �ε� ����!!!");
>>>>>>> origin/김성한:buddyup/src/com/kitri/util/db/DBConnection.java
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
<<<<<<< HEAD:membermvc/src/com/kitri/util/db/DBConnection.java
=======
//			System.out.println("����̹� �ε� ����");
>>>>>>> origin/김성한:buddyup/src/com/kitri/util/db/DBConnection.java
		}
	}
	
	public static Connection makeConnection() throws SQLException {
		return DriverManager.getConnection("jdbc:oracle:thin:@192.168.12.48:1521:xe", "kitri02", "kitri02");
	}
}
