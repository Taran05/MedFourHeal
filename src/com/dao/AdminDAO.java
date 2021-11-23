package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.UUID;

import com.dto.Admin;

import com.dbcon.DatabaseConnection;

public class AdminDAO 
{
	Connection con ;
	PreparedStatement pst;
	ResultSet rs;

	    public boolean checkAdminCredentials(Admin obj)
	    {
	        boolean b = false;
	        
	        try
	        {
	            con = DatabaseConnection.getConnection();
	            
	            pst = con.prepareStatement("SELECT * FROM admin WHERE email = ? and password = ?");
	            
	            pst.setString(1, obj.getEmail());
	            pst.setString(2, obj.getPassword());
	            
	            rs = pst.executeQuery();
	            
	            if(rs.isBeforeFirst())
	                b = true;
	            
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
	            
	            pst = con.prepareStatement("SELECT * FROM admin WHERE email = ? and password = ?");
	            
	            pst.setString(1, email);
	            pst.setString(2, oldPassword);
	            
	            rs = pst.executeQuery();
	            
	            if(rs.isBeforeFirst())
	            {
	                pst = con.prepareStatement("UPDATE admin SET password = ? WHERE email = ?");
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
	    
	    
	    public boolean forgotPassword(Admin obj)
	    {
	        boolean b = false;
	        
	        try
	        {
	            con = DatabaseConnection.getConnection();
	            
	            String genpass = UUID.randomUUID().toString().substring(0, 5);
	            
	                pst = con.prepareStatement("UPDATE admin SET password = ? WHERE email = ?");
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
	    
	    public String getAdminID()
	    {
	            String email = "";
	            
	       try
	        {
	            con = DatabaseConnection.getConnection();
	            
	            pst = con.prepareStatement("select email from admin");
	            
	            rs = pst.executeQuery();
	            
	            if(rs.isBeforeFirst())
	            {
	                rs.next();
	                email = rs.getString("email");
	            }
	            con.close();
	        }
	        catch(Exception ex)
	        {
	            ex.printStackTrace();
	        }
	       
	       return email;
	    }
	    
	    
	     public String getAdminPass()
	    {
	            String pass = "";
	            
	       try
	        {
	            con = DatabaseConnection.getConnection();
	            
	            pst = con.prepareStatement("select password from admin");
	            
	            rs = pst.executeQuery();
	            
	            if(rs.isBeforeFirst())
	            {
	                rs.next();
	                pass = rs.getString("password");
	            }
	            con.close();
	        }
	        catch(Exception ex)
	        {
	            ex.printStackTrace();
	        }
	       
	       return pass;
	    }

}
