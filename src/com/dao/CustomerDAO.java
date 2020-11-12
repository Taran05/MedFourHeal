package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.dbcon.DatabaseConnection;
import com.dto.Customer;
import com.dto.Distributor;

public class CustomerDAO 
{
	Connection con;
    PreparedStatement pst;
    ResultSet rs;
    
     /* Created ArrayList for getting all customers details.*/
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
	 
	 /* This method will allow administrator to update the customer details.*/
	 public boolean updateCustomerDetails(String email, String password, String first_name, String last_name, String address, String mobile_no, String d_o_b)
	 {
	        boolean b = false;
	        
	        try
	        {
	            con = DatabaseConnection.getConnection();
	            
	            pst = con.prepareStatement("update customer set Password=?, First_Name=?, Last_Name=?, Address=?, Mobile_no=?, D_O_B=?"
	            		+ " where Email=?");
	            
	            pst.setString(1, password);
	            pst.setString(2, first_name);
	            pst.setString(3, last_name);
	            pst.setString(4, address);
	            pst.setString(5, mobile_no);
	            pst.setString(6, d_o_b);
	            pst.setString(7, email);
	        
	            int count = pst.executeUpdate();
	            
	            if(count > 0)
	                b = true;
	            
	            con.close();
	        }
	        catch(Exception ex)
	        {
	            ex.printStackTrace();
	        }
	        
	        return b;
	    }
	 
	 /* This method will allow administrator to delete customer.*/
	 public boolean deleteCustomer(String email)
	 {
	        boolean b = false;
	        
	        try
	        {
	            con = DatabaseConnection.getConnection();
	            
	            pst = con.prepareStatement("delete from customer where Email= ?");
	            
	            pst.setString(1, email);
	        
	            int count = pst.executeUpdate();
	            
	            if(count > 0)
	                b = true;
	            
	            con.close();
	        }
	        catch(Exception ex)
	        {
	            ex.printStackTrace();
	        }
	        
	        return b;
	    }
	 
	 /* This method will allow Customer to register on the website who want to sell medicines.*/
	 public boolean registerCustomer(Customer obj) 
	 {
	        boolean b = false;
	        try 
	        { 
	            con = DatabaseConnection.getConnection();
	            pst = con.prepareStatement("insert into customer values(?,?,?,?,?,?,?)");
	            pst.setString(1, obj.getEmail());
	            pst.setString(2, obj.getPassword());
	            pst.setString(3, obj.getFirst_name());
	            pst.setString(4, obj.getLast_name());
	            pst.setString(5, obj.getAddress());
	            pst.setString(6, obj.getMobile_no());
	            pst.setString(7, obj.getD_o_b());
	            int count = pst.executeUpdate();
	            if (count > 0) 
	            {
	                    System.out.println("Customer Registered Successfully" + obj.getEmail());
	                    b = true;
	            }
	            else 
	            {
	                    System.out.println("Customer Not Registered Successfully" + obj.getEmail());
	            }
	            con.close();
	        }
	         catch (Exception ex) 
	         {
	            ex.printStackTrace();
	         }

	        return b;
	    }


}