package com.william.util;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;

public class DBConnectionUtil {
	private static String DRIVER = "com.mysql.jdbc.Driver";
	private static String URL = "jdbc:mysql://localhost:3306/employeedirectory";
	private static String USERNAME = "root";
	private static String PASSWORD = "";
	private static Connection connection = null;
	
	public static Connection openConnection()
	{
		if(connection != null) {
			return connection;
		}
		else {
			try {
				Class.forName(DRIVER);
				connection =  (Connection) DriverManager.getConnection(URL, USERNAME, PASSWORD);
			} catch(ClassNotFoundException e) {
				e.printStackTrace();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		return connection;
	}
	
}