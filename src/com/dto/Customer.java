package com.dto;

import java.io.Serializable;

public class Customer implements Serializable 
{
	private String email;
	private String password;
	private String first_name;
    private String last_name;
    private String address;
    private String mobile_no;
    private String d_o_b;
    
    public Customer()
    {
    }
    
    public Customer(String email, String password, String first_name, String last_name, String address,
			String mobile_no, String d_o_b) {
		super();
		this.email = email;
		this.password = password;
		this.first_name = first_name;
		this.last_name = last_name;
		this.address = address;
		this.mobile_no = mobile_no;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getMobile_no() {
		return mobile_no;
	}

	public void setMobile_no(String mobile_no) {
		this.mobile_no = mobile_no;
	}

	public String getD_o_b() {
		return d_o_b;
	}

	public void setD_o_b(String d_o_b) {
		this.d_o_b = d_o_b;
	}
    
}
