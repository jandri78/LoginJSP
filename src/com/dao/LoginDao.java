package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class LoginDao 
{
	String URL = "jdbc:mysql://localhost/test";
	String sql = "select * from users where user=? and password =?";
	
	public boolean check(String uname,String password)
	{
	
		try {
			//System.out.println("intentando conectar");
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con=DriverManager.getConnection(URL, "root", "");
			//System.out.println("conectadoooo"+con);
			
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, uname);
			st.setString(2, password);
			
			ResultSet rs = st.executeQuery();
			
			if (rs.next()) {
				return true;
			}
			

		} catch (SQLException e) {
			System.out.println("Error MYSQL");
			
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		return false;
		
	}
}
