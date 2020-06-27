package com.hms.utils;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	public static Connection createConnection() {
		Connection con = null;
	    String url = "jdbc:mysql://localhost:3306/hms?autoReconnect=true&useSSL=false";
	    String username = "root";
	    String password = "";//rootgivenpassword
	 
	    try
	    {
	        try
	        {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	        }
	        catch (ClassNotFoundException e)
	        {
//	            e.printStackTrace();
	        	System.out.println(e);
	        }
	        con = DriverManager.getConnection(url, username, password);
	        System.out.println("Post establishing a DB connection - "+con);
	    }
	    catch (Exception e)
	    {
	        System.out.println(e);
	    }
	    return con;
	    }
}

