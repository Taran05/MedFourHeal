package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.UUID;

import com.dbcon.DatabaseConnection;
import com.dto.Customer;
import com.servercon.WebServer;

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
	            pst = con.prepareStatement("insert into customer values(?,?,?,?,?,?,?,?)");
	            pst.setString(1, obj.getEmail());
	            pst.setString(2, obj.getPassword());
	            pst.setString(3, obj.getFirst_name());
	            pst.setString(4, obj.getLast_name());
	            pst.setString(5, obj.getAddress());
	            pst.setString(6, obj.getMobile_no());
	            pst.setString(7, obj.getD_o_b());
	            pst.setBoolean(8,false);
	            int count = pst.executeUpdate();
	            if (count > 0) 
	            {
	            	String verification_link = WebServer.MYSERVER
	                         + "/verifycustomer.jsp?email=" + obj.getEmail();

	                 boolean mailSent = MailDAO.sendMail(obj.getEmail(),
	                         "Verification Mail From MedFourHeal", "Please click on following link "
	                         + "to verify yourself with MedFourHeal <a href=" + verification_link
	                         + ">VERIFY</a>");

	                 if (mailSent) {
	                     System.out.println("verification mail has been "
	                             + "sent to " + obj.getEmail());
	                     b = true;
	                 } else {
	                     System.out.println("verification mail has not been "
	                             + "sent to " + obj.getEmail());
	                 }
	                 con.close();	            
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
	 
	 public boolean verifyCustomer(String email) 
	 {
	        boolean b = false;

	        try {
	            con = DatabaseConnection.getConnection();

	            pst = con.prepareStatement("select * from customer Where email = ? AND "
	                    + "verified = false");

	            pst.setString(1, email);

	            rs = pst.executeQuery();

	            if (rs.isBeforeFirst()) {
	                pst = con.prepareStatement("Update customer set verified = true Where "
	                        + "email = ?");

	                pst.setString(1, email);

	                int count = pst.executeUpdate();

	                if (count > 0) {
	                    b = true;
	                }
	            }

	            con.close();
	        } catch (Exception ex) {
	            ex.printStackTrace();
	        }

	        return b;
	    }
	 
	 public boolean checkCustomerCredentials(Customer obj) {
	        boolean b = false;

	        try {
	            con = DatabaseConnection.getConnection();
	            pst = con.prepareStatement("SELECT * FROM customer WHERE email = ? and password = ? and verified=true");

	            pst.setString(1, obj.getEmail());
	            pst.setString(2, obj.getPassword());

	            rs = pst.executeQuery();

	            if (rs.isBeforeFirst()) {
	                b = true;
	            }

	            con.close();
	        } catch (Exception ex) {
	            ex.printStackTrace();
	        }

	        return b;
	    }

	 
	 public boolean forgotPassword(Customer obj)
	    {
	        boolean b = false;
	        
	        try
	        {
	            con = DatabaseConnection.getConnection();
	            
	            String genpass = UUID.randomUUID().toString().substring(0, 5);
	            
	                pst = con.prepareStatement("UPDATE customer SET password = ? WHERE email = ?");
	                pst.setString(1, genpass);
	                pst.setString(2, obj.getEmail());
	                
	                int count = pst.executeUpdate();
	                
	                if(count>0)
	                {
	                boolean mailSent = MailDAO.sendMail(obj.getEmail(), 
	"New password from MedFourHeal", "This is your new password  : "+genpass);
	                if(mailSent)
	                	b=true;
	                }
	                
	            con.close();
	        }
	        catch(Exception ex)
	        {
	            ex.printStackTrace();
	        }
	        
	        return b;
	    }
	 
	 
	 public boolean changePassword(String email,String oldPassword ,String newPassword)
	    {
	        boolean b = false;
	        
	        try
	        {
	            con = DatabaseConnection.getConnection();
	            
	            pst = con.prepareStatement("SELECT * FROM customer WHERE email = ? and password = ?");
	            
	            pst.setString(1, email);
	            pst.setString(2, oldPassword);
	            
	            rs = pst.executeQuery();
	            
	            if(rs.isBeforeFirst())
	            {
	                pst = con.prepareStatement("UPDATE customer SET password = ? WHERE email = ?");
	                pst.setString(1, newPassword);
	                pst.setString(2, email);
	                
	                int count = pst.executeUpdate();
	                
	                if(count > 0)
	                    b = true;
	            }
	            
	            con.close();
	        }
	        catch(Exception ex)
	        {
	            ex.printStackTrace();
	        }
	        
	        return b;
	    }
	    
}