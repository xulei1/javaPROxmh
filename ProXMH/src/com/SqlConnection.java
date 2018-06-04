package com;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class SqlConnection {
	public Connection  con=null;

	
	public Connection getConnection() {
		if(con==null) {
			try {
				Class.forName("com.mysql.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/aaaa?user=root&password=&characterEncoding=utf-8");
			} catch (ClassNotFoundException | SQLException e) {
				// TODO 锟皆讹拷锟斤拷锟缴碉拷 catch 锟斤拷
				e.printStackTrace();
			}
		}
		return con;
		
	}
public void close() {
	try {
		con.close();
	} catch (SQLException e) {
		// TODO 鑷姩鐢熸垚鐨� catch 鍧�
		e.printStackTrace();
	}
}
}
