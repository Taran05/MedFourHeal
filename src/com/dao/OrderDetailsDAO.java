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
    
    
     /* Created ArrayList for getting all orders details.*/
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
	                    obj.setNetcost(rs.getInt(7));
	                    obj.setAmount(rs.getInt(8));
	                    obj.setPaymode(rs.getString(9));
	                    obj.setStatus(rs.getString(10));
	                    lst.add(obj);
	                }
	            }

	            con.close();
	        } catch (Exception ex) {
	            ex.printStackTrace();
	        }

	        return lst;
	    }
	 
	 /* This method will allow administrator to delete the order.*/
	 public boolean deleteOrder(int id)
	    {
	        boolean b = false;
	        
	        try
	        {
	            con = DatabaseConnection.getConnection();
	            
	            pst = con.prepareStatement("delete from orderdetails where Id= ?");
	            
	            pst.setInt(1, id);
	        
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
	 
	 /* This method will allow administrator to update the order details.*/
	 public boolean updateOrderDetails(int id, String email, String medcode, String medicinename, int minquantity, String type,
				int netcost, int amount, String paymode, String status)
	    {
	        boolean b = false;
	        
	        try
	        {
	            con = DatabaseConnection.getConnection();
	            
	            pst = con.prepareStatement("update orderdetails set Email=?, Medcode=?, Medicine_Name=?, Minquantity=?, Type=?, Netcost=?, Amount=?,Paymode=?,Status=?"
	            		+ " where Id=?");
	            
	            pst.setString(1, email);
	            pst.setString(2, medcode);
	            pst.setString(3, medicinename);
	            pst.setInt(4, minquantity);
	            pst.setString(5, type);
	            pst.setInt(6, netcost);
	            pst.setInt(7, amount);
	            pst.setString(8, paymode);
	            pst.setString(9, status);
	            pst.setInt(10, id);
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
	 
	 public boolean addOrder(String email, String medcode, String medicine_name, int minquantity, String type, int netcost, String paymode)
	    {
	        boolean b = false;
	        
	        try
	        {
	            con = DatabaseConnection.getConnection();
	            
	            pst = con.prepareStatement("insert into orderdetails(email,medcode,medicine_name,minquantity,type,netcost,amount,paymode) values(?,?,?,?,?,?,?,?)");
	            
	            pst.setString(1, email);
	            pst.setString(2,medcode);
	            pst.setString(3, medicine_name);
	            pst.setInt(4, minquantity);
	            pst.setString(5,type);
	            pst.setInt(6, netcost);
	            pst.setInt(7, netcost);
	            pst.setString(8,paymode);
	            
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
	 
	 public ArrayList<OrderDetails> getSpeCustOrderDetails(String email) 
		{
	        ArrayList<OrderDetails> lst = null;

	        try {
	            con = DatabaseConnection.getConnection();

	            pst = con.prepareStatement("select * from orderdetails where email=?");
	            pst.setString(1,email);

	            rs = pst.executeQuery();

	            if (rs.isBeforeFirst()) {
	                lst = new ArrayList<>();

	                while (rs.next()) {
	                    OrderDetails obj = new OrderDetails();
	                    obj.setId(rs.getInt(1));
	                    obj.setMedcode(rs.getString(3));
	                    obj.setMedicinename(rs.getString(4));
	                    obj.setMinquantity(rs.getInt(5));
	                    obj.setType(rs.getString(6));
	                    obj.setNetcost(rs.getInt(7));
	                    obj.setAmount(rs.getInt(8));
	                    obj.setPaymode(rs.getString(9));
	                    obj.setStatus(rs.getString(10));
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