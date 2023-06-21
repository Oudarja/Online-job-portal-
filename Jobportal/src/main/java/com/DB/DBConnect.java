package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
	private static Connection conn; 
	
	public static Connection getconn()
	{
		try
		{
			if(conn==null)
			{
				Class.forName("com.mysql.cj.jdbc.Driver");
				
				conn=DriverManager.getConnection("jdbc:mysql://localhost:3307/job_portal","root","1234"); //1234=password
				
			}
			
			
		} catch (Exception e) 
		{
			e.printStackTrace();
		}
		
		return conn;
	}

}
