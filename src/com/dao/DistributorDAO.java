package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.UUID;

import com.dbcon.DatabaseConnection;
import com.dto.Distributor;

import com.servercon.WebServer;



public class DistributorDAO 
{
	Connection con;
    PreparedStatement pst;
    ResultSet rs;
    
    /* Created ArrayList for getting all distributors details.*/
	 public ArrayList<Distributor> getAllDistributorDetails() {
	        ArrayList<Distributor> lst = null;

	        try {
	            con = DatabaseConnection.getConnection();

	            pst = con.prepareStatement("select * from distributor where approved=true and verified=true");

	            rs = pst.executeQuery();

	            if (rs.isBeforeFirst()) {
	                lst = new ArrayList<>();

	                while (rs.next()) {
	                    Distributor obj = new Distributor();
	                    obj.setEmail(rs.getString(1));
	                    obj.setPassword(rs.getString(2));
	                    obj.setFirst_name(rs.getString(3));
	                    obj.setLast_name(rs.getString(4));
	                    obj.setMobile_no(rs.getString(5));
	                    obj.setPharmacist_no(rs.getString(6));
	                    obj.setForm20_drug_license_no(rs.getString(7));
	                    obj.setForm21_drug_license_no(rs.getString(8));
	                    obj.setShop_address(rs.getString(9));
	                    obj.setResidential_address(rs.getString(10));
	                    obj.setD_o_b(rs.getString(11));
	                    lst.add(obj);
	                }
	            }

	            con.close();
	        } catch (Exception ex) {
	            ex.printStackTrace();
	        }

	        return lst;
	    }
	 	
	 public ArrayList<Distributor> getAllNotApprovedDistributorDetails() {
	        ArrayList<Distributor> lst = null;

	        try {
	            con = DatabaseConnection.getConnection();

	            pst = con.prepareStatement("select * from distributor where approved=false");

	            rs = pst.executeQuery();

	            if (rs.isBeforeFirst()) {
	                lst = new ArrayList<>();

	                while (rs.next()) {
	                    Distributor obj = new Distributor();
	                    obj.setEmail(rs.getString(1));
	                    obj.setPassword(rs.getString(2));
	                    obj.setFirst_name(rs.getString(3));
	                    obj.setLast_name(rs.getString(4));
	                    obj.setMobile_no(rs.getString(5));
	                    obj.setPharmacist_no(rs.getString(6));
	                    obj.setForm20_drug_license_no(rs.getString(7));
	                    obj.setForm21_drug_license_no(rs.getString(8));
	                    obj.setShop_address(rs.getString(9));
	                    obj.setResidential_address(rs.getString(10));
	                    obj.setD_o_b(rs.getString(11));
	                    lst.add(obj);
	                }
	            }

	            con.close();
	        } catch (Exception ex) {
	            ex.printStackTrace();
	        }

	        return lst;
	    }
	 
	 /* This method will allow administrator to update the distributor details.*/
	 public boolean updateDistributorDetails(String email, String password, String first_name, String last_name, String mobile_no,
				String pharmacist_no, String form20_drug_license_no, String form21_drug_license_no, String shop_address,
				String residential_address, String d_o_b)
	 {
	        boolean b = false;
	        
	        try
	        {
	            con = DatabaseConnection.getConnection();
	            
	            pst = con.prepareStatement("update distributor set Password=?, First_Name=?, Last_Name=?, Mobile_No=?, Pharmacist_No=?, "
	            		+ "Form_20_Drug_License_No=?, Form_21_Drug_License_No=?, Shop_Address=?, Residential_Address=?, D_O_B=?"
	            		+ " where Email=?");
	            
	            pst.setString(1, password);
	            pst.setString(2, first_name);
	            pst.setString(3, last_name);
	            pst.setString(4, mobile_no);
	            pst.setString(5, pharmacist_no);
	            pst.setString(6, form20_drug_license_no);
	            pst.setString(7, form21_drug_license_no);
	            pst.setString(8, shop_address);
	            pst.setString(9, residential_address);
	            pst.setString(10, d_o_b);
	            pst.setString(11, email);
	        
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
	 
	 /* This method will allow administrator to delete distributor.*/
	 public boolean deleteDistributor(String email)
	 {
	        boolean b = false;
	        
	        try
	        {
	            con = DatabaseConnection.getConnection();
	            
	            pst = con.prepareStatement("delete from distributor where Email= ?");
	            
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
	 
	 /* This method will allow Distributor to register on the website who want to sell medicines.*/
	 public boolean registerDistributor(Distributor obj) 
	 {
	        boolean b = false;
	        try 
	        { 
	            con = DatabaseConnection.getConnection();
	            pst = con.prepareStatement("insert into distributor values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
	            pst.setString(1, obj.getEmail());
	            pst.setString(2, obj.getPassword());
	            pst.setString(3, obj.getFirst_name());
	            pst.setString(4, obj.getLast_name());
	            pst.setString(5, obj.getMobile_no());
	            pst.setString(6, obj.getPharmacist_no());	
	            pst.setString(7, obj.getForm20_drug_license_no());
	            pst.setString(8, obj.getForm21_drug_license_no());
	            pst.setString(9, obj.getShop_address());
	            pst.setString(10, obj.getResidential_address());
	            pst.setString(11, obj.getD_o_b());
	            pst.setBoolean(12, false);
	            pst.setBoolean(13, false);
	            int count = pst.executeUpdate();
	            if (count > 0) 
	            {
	            	 String verification_link = WebServer.MYSERVER
	                         + "/verifydistributor.jsp?email=" + obj.getEmail();

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
	        }
	         catch (Exception ex) 
	         {
	            ex.printStackTrace();
	         }

	        return b;
	    }

	 public boolean checkDistributorCredentials(Distributor obj) {
	        boolean b = false;

	        try {
	            con = DatabaseConnection.getConnection();
	            pst = con.prepareStatement("SELECT * FROM distributor WHERE email = ? and password = ? and verified=true and approved=true");

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
	 
	 
	 public boolean verifyDistributor(String email) {
	        boolean b = false;

	        try {
	            con = DatabaseConnection.getConnection();

	            pst = con.prepareStatement("select * from distributor Where email = ? AND "
	                    + "verified = false");

	            pst.setString(1, email);

	            rs = pst.executeQuery();

	            if (rs.isBeforeFirst()) {
	                pst = con.prepareStatement("Update distributor set verified = true Where "
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
	 	
	 public boolean approveDistributor(String email) {
	        boolean b = false;

	        try {
	            con = DatabaseConnection.getConnection();

	            pst = con.prepareStatement("Update distributor set approved = true where email = ?");

	            pst.setString(1, email);

	            int count = pst.executeUpdate();

	            if (count > 0) {
	                b = true;
	            }

	            con.close();
	        } catch (Exception ex) {
	            ex.printStackTrace();
	        }

	        return b;
	    }

	    public boolean rejectDistributor(String email) {
	        boolean b = false;

	        try {
	            con = DatabaseConnection.getConnection();

	            pst = con.prepareStatement("Delete From distributor where email = ?");

	            pst.setString(1, email);

	            int count = pst.executeUpdate();

	            if (count > 0) {
	                b = true;
	            }

	            con.close();
	        } catch (Exception ex) {
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
	            
	            pst = con.prepareStatement("SELECT * FROM distributor WHERE email = ? and password = ?");
	            
	            pst.setString(1, email);
	            pst.setString(2, oldPassword);
	            
	            rs = pst.executeQuery();
	            
	            if(rs.isBeforeFirst())
	            {
	                pst = con.prepareStatement("UPDATE distributor SET password = ? WHERE email = ?");
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
	    
	    
	    public boolean forgotPassword(Distributor obj)
	    {
	        boolean b = false;
	        
	        try
	        {
	            con = DatabaseConnection.getConnection();
	            
	            String genpass = UUID.randomUUID().toString().substring(0, 5);
	            
	                pst = con.prepareStatement("UPDATE distributor SET password = ? WHERE email = ?");
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
	    
	    public String getDistributorID()
	    {
	            String email = "";
	            
	       try
	        {
	            con = DatabaseConnection.getConnection();
	            
	            pst = con.prepareStatement("select email from distributor");
	            
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
	    
	    
	     public String getDistributorPass()
	    {
	            String pass = "";
	            
	       try
	        {
	            con = DatabaseConnection.getConnection();
	            
	            pst = con.prepareStatement("select password from distributor");
	            
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