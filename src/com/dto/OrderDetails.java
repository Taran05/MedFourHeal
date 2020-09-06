package com.dto;

import java.io.Serializable;

public class OrderDetails implements Serializable 
{
	private int id;
	private String email;
	private String medcode;
	private String medicinename;
	private int minquantity;
	private String type;
	private int orderqueue;
	private int netcost;
	private int amount;
	private String paymode;
	private String status;
	
	public OrderDetails()
	{
	}

	public OrderDetails(int id, String email, String medcode, String medicinename, int minquantity, String type, int orderqueue,
			int netcost, int amount, String paymode, String status) {
		super();
		this.id = id;
		this.email = email;
		this.medcode = medcode;
		this.medicinename = medicinename;
		this.minquantity = minquantity;
		this.type = type;
		this.orderqueue = orderqueue;
		this.netcost = netcost;
		this.amount = amount;
		this.paymode = paymode;
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMedcode() {
		return medcode;
	}

	public void setMedcode(String medcode) {
		this.medcode = medcode;
	}

	public String getMedicinename() {
		return medicinename;
	}

	public void setMedicinename(String medicinename) {
		this.medicinename = medicinename;
	}

	public int getMinquantity() {
		return minquantity;
	}

	public void setMinquantity(int minquantity) {
		this.minquantity = minquantity;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getOrderqueue() {
		return orderqueue;
	}

	public void setOrderqueue(int orderqueue) {
		this.orderqueue = orderqueue;
	}

	public int getNetcost() {
		return netcost;
	}

	public void setNetcost(int netcost) {
		this.netcost = netcost;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public String getPaymode() {
		return paymode;
	}

	public void setPaymode(String paymode) {
		this.paymode = paymode;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	
}
