package com.dto;

public class Medicine 
{
	private int id;
	private String medicine_name;
	private String med_image;
	private String medcode;
	private String disease;
	private int netcost;
	private int instock;
	private String med_desc;
	private String email;
	
	public Medicine()
	{
		
	}

	public Medicine(int id, String medicine_name, String med_image, String medcode, String disease, int netcost, int instock,
			String med_desc, String email) {
		super();
		this.id = id;
		this.medicine_name = medicine_name;
		this.med_image = med_image;
		this.medcode = medcode;
		this.disease = disease;
		this.netcost = netcost;
		this.instock = instock;
		this.med_desc = med_desc;
		this.email = email;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMedicine_name() {
		return medicine_name;
	}

	public void setMedicine_name(String medicine_name) {
		this.medicine_name = medicine_name;
	}
	
	public String getMed_image() {
		return med_image;
	}

	public void setMed_image(String med_image) {
		this.med_image = med_image;
	}
	
	public String getMedcode() {
		return medcode;
	}

	public void setMedcode(String medcode) {
		this.medcode = medcode;
	}

	public String getDisease() {
		return disease;
	}

	public void setDisease(String disease) {
		this.disease = disease;
	}

	public int getNetcost() {
		return netcost;
	}

	public void setNetcost(int netcost) {
		this.netcost = netcost;
	}

	public int getInstock() {
		return instock;
	}

	public void setInstock(int instock) {
		this.instock = instock;
	}

	public String getMed_desc() {
		return med_desc;
	}

	public void setMed_desc(String med_desc) {
		this.med_desc = med_desc;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	
	
}
