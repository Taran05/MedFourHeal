package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.dbcon.DatabaseConnection;
import com.dto.Medicine;
public class MedicineDAO 
{
	Connection con;
    PreparedStatement pst;
    ResultSet rs;
	public boolean addMedicine(String medicine_name, String medcode, String disease, int netcost, int instock, String med_desc, String email)
    {
        boolean b = false;
        
        try
        {
            con = DatabaseConnection.getConnection();
            
            pst = con.prepareStatement("insert into medicine(medicine_name,medcode,disease,netcost,instock,med_desc,email) values(?,?,?,?,?,?,?)");
            
            pst.setString(1, medicine_name);
            pst.setString(2,medcode);
            pst.setString(3, disease);
            pst.setInt(4, netcost);
            pst.setInt(5, instock);
            pst.setString(6,med_desc);
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
	
	public ArrayList<Medicine> getAllStockDetails(String email) 
	{
        ArrayList<Medicine> lst = null;

        try {
            con = DatabaseConnection.getConnection();

            pst = con.prepareStatement("select * from medicine where email=?");
            pst.setString(1,email);

            rs = pst.executeQuery();

            if (rs.isBeforeFirst()) {
                lst = new ArrayList<>();

                while (rs.next()) {
                    Medicine obj = new Medicine();
                    obj.setId(rs.getInt(1));
                    obj.setMedicine_name(rs.getString(2));
                    obj.setMed_image(rs.getString(3));
                    obj.setMedcode(rs.getString(4));
                    obj.setDisease(rs.getString(5));
                    obj.setNetcost(rs.getInt(6));
                    obj.setInstock(rs.getInt(7));
                    obj.setMed_desc(rs.getString(8));
                    lst.add(obj);
                }
            }

            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return lst;
    }
	
	public boolean addMedicineImageName(String email, String medcode, String med_image)
	{
		 boolean b = false;
	        
	        try
	        {
	            con = DatabaseConnection.getConnection();
	            
	            pst = con.prepareStatement("update medicine set med_image= ? where email= ? and medcode= ?");
	            
	            pst.setString(1,med_image);
	            pst.setString(2,email);
	            pst.setString(3,medcode);
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
	 
	public boolean deleteMedicine(int id)
    {
        boolean b = false;
        
        try
        {
                con = DatabaseConnection.getConnection();
                
                pst = con.prepareStatement("delete from medicine where id = ?");

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
	
	public boolean updateMedicineStock(int id, String medicine_name, String medcode, String disease, int netcost, int instock, String med_desc)
	{
		 boolean b = false;
	        
	        try
	        {
	            con = DatabaseConnection.getConnection();
	            
	            pst = con.prepareStatement("update medicine set medicine_name=?, medcode=?, disease=?, netcost=?, instock=?, med_desc=? where id=?");
	            
	            pst.setString(1,medicine_name);
	            pst.setString(2,medcode);
	            pst.setString(3,disease);
	            pst.setInt(4,netcost);
	            pst.setInt(5,instock);
	            pst.setString(6,med_desc);
	            pst.setInt(7,id);
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
	
	public ArrayList<Medicine> custBuyMedicine() 
	{
        ArrayList<Medicine> lst = null;

        try {
            con = DatabaseConnection.getConnection();

            pst = con.prepareStatement("select * from medicine");

            rs = pst.executeQuery();

            if (rs.isBeforeFirst()) {
                lst = new ArrayList<>();

                while (rs.next()) {
                    Medicine obj = new Medicine();
                    obj.setId(rs.getInt(1));
                    obj.setMedicine_name(rs.getString(2));
                    obj.setMed_image(rs.getString(3));
                    obj.setMedcode(rs.getString(4));
                    obj.setDisease(rs.getString(5));
                    obj.setNetcost(rs.getInt(6));
                    obj.setInstock(rs.getInt(7));
                    obj.setMed_desc(rs.getString(8));
                    obj.setEmail(rs.getString(9));
                    lst.add(obj);
                }
            }

            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        return lst;
    }
	
	public boolean isInStock(int id)
	{
		boolean b = false;
        int stock;
        try
        {
                con = DatabaseConnection.getConnection();
                
                pst = con.prepareStatement("select instock from medicine where id = ?");

                pst.setInt(1, id);

                rs= pst.executeQuery();
                Medicine obj=new Medicine();
                while(rs.next())
                {
                	
                	obj.setId(rs.getInt(1));
                }
                stock=obj.getId();
                if(stock>0)
                	b=true;
               
                
                con.close();
        }
        catch(Exception ex)
        {
            ex.printStackTrace();
        }
        
        return b;
	}
	
	public boolean updateStockAfterBuying(String medcode, String email) 
	{
        boolean b = false;
        try {
            con = DatabaseConnection.getConnection();

            pst = con.prepareStatement("Update medicine set instock = instock- 1 where medcode=? and email=?");
            pst.setString(1, medcode);
            pst.setString(2, email);
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
}
