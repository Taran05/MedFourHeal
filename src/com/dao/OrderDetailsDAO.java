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
	 public boolean updateOrderDetails(int id, String email, String medcode, String medicinename, int minquantity, String type, int orderqueue,
				int netcost, int amount, String paymode, String status)
	    {
	        boolean b = false;
	        
	        try
	        {
	            con = DatabaseConnection.getConnection();
	            
	            pst = con.prepareStatement("update orderdetails set Email=?, Medcode=?, Medicine_Name=?, Minquantity=?, Type=?, Orderqueue=?, Netcost=?, Amount=?,Paymode=?,Status=?"
	            		+ " where Id=?");
	            
	            pst.setString(1, email);
	            pst.setString(2, medcode);
	            pst.setString(3, medicinename);
	            pst.setInt(4, minquantity);
	            pst.setString(5, type);
	            pst.setInt(6, orderqueue);
	            pst.setInt(7, netcost);
	            pst.setInt(8, amount);
	            pst.setString(9, paymode);
	            pst.setString(10, status);
	            pst.setInt(11, id);
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

}