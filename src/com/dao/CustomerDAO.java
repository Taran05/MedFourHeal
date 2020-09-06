package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.dbcon.DatabaseConnection;
import com.dto.Customer;


public class CustomerDAO 
{
	Connection con;
    PreparedStatement pst;
    ResultSet rs;
	 public ArrayList<Customer> getAllCustomerDetails() {
	        ArrayList<Customer> lst = null;

	        try {
	            con = DatabaseConnection.getConnection();

	            pst = con.prepareStatement("select * from customer");

	            rs = pst.executeQuery();

	            if (rs.isBeforeFirst()) {
	                lst = new ArrayList<>();

	                while (rs.next()) {
	                    Customer obj = new Customer();
	                    obj.setEmail(rs.getString(1));
	                    obj.setPassword(rs.getString(2));
	                    obj.setFirst_name(rs.getString(3));
	                    obj.setLast_name(rs.getString(4));
	                    obj.setAddress(rs.getString(5));
	                    obj.setMobile_no(rs.getString(6));
	                    obj.setD_o_b(rs.getString(7));
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

