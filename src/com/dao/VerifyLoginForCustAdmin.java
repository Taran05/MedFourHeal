package com.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.dbcon.DatabaseConnection;


public class VerifyLoginForCustAdmin {
	
	public static boolean checkLogin(int id){
		boolean status=false;
		Connection con=DatabaseConnection.getConnection();
		try {
			System.out.println("222222"+id);
			System.out.println("rrrrrrrr");
			PreparedStatement ps=con.prepareStatement("Select * from orderdetails where Id =?");
			ps.setInt(1,id);
			ResultSet rs=ps.executeQuery();
			status=rs.next();	
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return status;
	}

}
