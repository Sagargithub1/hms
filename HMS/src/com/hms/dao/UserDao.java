package com.hms.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.hms.bean.UserBean;
import com.hms.utils.DBConnection;

public class UserDao {
		public String authenticateUser(UserBean user) {
			
		String userName=user.getUserName();
		String userPassword=user.getUserPassword();
		
		String userNameDB="";
		String userPasswordDB="";
		String userRoleDB="";
		
		Connection con=null;
		Statement stmt=null;
		ResultSet rs=null;
			
			try {
				con=DBConnection.createConnection();
				stmt=con.createStatement();
				rs=stmt.executeQuery("select user_login,user_password,user_role from userstore");
				
				while(rs.next()) {
					userNameDB=rs.getString("user_login");
					userPasswordDB=rs.getString("user_password");
					userRoleDB=rs.getString("user_role");
//					System.out.println(userNameDB +" "+ userPasswordDB+" "+userRoleDB);
					if(userName.equals(userNameDB) && userPassword.equals(userPasswordDB) && userRoleDB.equals("Developer")) 
						return "Developer_Role";
					else if(userName.equals(userNameDB) && userPassword.equals(userPasswordDB) && userRoleDB.equals("Desk_Executive"))
						return "Desk_Executive_Role";
					else if(userName.equals(userNameDB) && userPassword.equals(userPasswordDB) && userRoleDB.equals("Diagnostics"))
						return "Diagnostics_Role";
					else if(userName.equals(userNameDB) && userPassword.equals(userPasswordDB) && userRoleDB.equals("Pharmacist"))
						return "Pharmacist_Role";
				}
				
			}catch (Exception e) {
				System.out.println(e);
			}
			
			return "Invalid user credentials";
			
		}
}
