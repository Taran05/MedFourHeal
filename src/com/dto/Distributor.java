package com.dto;

public class Distributor 
{
	private String email;
	private String password;
	private String first_name;
	private String last_name;
	private String mobile_no;
	private String pharmacist_no;
	private String form20_drug_license_no;
	private String form21_drug_license_no;
	private String shop_address;
	private String residential_address;
	private String d_o_b;
	
	public Distributor()
	{
		
	}

	public Distributor(String email, String password, String first_name, String last_name, String mobile_no,
			String pharmacist_no, String form20_drug_license_no, String form21_drug_license_no, String shop_address,
			String residential_address, String d_o_b) {
		super();
		this.email = email;
		this.password = password;
		this.first_name = first_name;
		this.last_name = last_name;
		this.mobile_no = mobile_no;
		this.pharmacist_no = pharmacist_no;
		this.form20_drug_license_no = form20_drug_license_no;
		this.form21_drug_license_no = form21_drug_license_no;
		this.shop_address = shop_address;
		this.residential_address = residential_address;
		this.d_o_b = d_o_b;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public String getMobile_no() {
		return mobile_no;
	}

	public void setMobile_no(String mobile_no) {
		this.mobile_no = mobile_no;
	}

	public String getPharmacist_no() {
		return pharmacist_no;
	}

	public void setPharmacist_no(String pharmacist_no) {
		this.pharmacist_no = pharmacist_no;
	}

	public String getForm20_drug_license_no() {
		return form20_drug_license_no;
	}

	public void setForm20_drug_license_no(String form20_drug_license_no) {
		this.form20_drug_license_no = form20_drug_license_no;
	}

	public String getForm21_drug_license_no() {
		return form21_drug_license_no;
	}

	public void setForm21_drug_license_no(String form21_drug_license_no) {
		this.form21_drug_license_no = form21_drug_license_no;
	}

	public String getShop_address() {
		return shop_address;
	}

	public void setShop_address(String shop_address) {
		this.shop_address = shop_address;
	}

	public String getResidential_address() {
		return residential_address;
	}

	public void setResidential_address(String residential_address) {
		this.residential_address = residential_address;
	}

	public String getD_o_b() {
		return d_o_b;
	}

	public void setD_o_b(String d_o_b) {
		this.d_o_b = d_o_b;
	}
}