package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.dbcon.DatabaseConnection;
import com.dto.OrderDetails;

public class OrderDetailsDAO 
{
	Connection con;
    PreparedStatement pst;
    ResultSet rs;
	 public ArrayList<OrderDetails> getAllCustOrderDetails() {
	        ArrayList<OrderDetails> lst = null;

	        try {
	            con = DatabaseConnection.getConnection();

	            pst = con.prepareStatement("select * from orderdetails");

	            rs = pst.executeQuery();

	            if (rs.isBeforeFirst()) {
	                lst = new ArrayList<>();

	                while (rs.next()) {
	                    OrderDetails obj = new OrderDetails();
	                    obj.setId(rs.getInt(1));
	                    obj.setEmail(rs.getString(2));
	                    obj.setMedcode(rs.getString(3));
	                    obj.setMedicinename(rs.getString(4));
	                    obj.setMinquantity(rs.getInt(5));
	                    obj.setType(rs.getString(6));
	                    obj.setOrderqueue(rs.getInt(7));
	                    obj.setNetcost(rs.getInt(8));
	                    obj.setAmount(rs.getInt(9));
	                    obj.setPaymode(rs.getString(10));
	                    obj.setStatus(rs.getString(11));
	                    lst.add(obj);
	                }
	            }

	            con.close();
	        } catch (Exception ex) {
	            ex.printStackTrace();
	        }

	        return lst;
	    }


}
