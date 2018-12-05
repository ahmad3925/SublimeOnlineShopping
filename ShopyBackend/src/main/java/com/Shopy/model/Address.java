package com.Shopy.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Address {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)

	private int id;
	private String address_line_one;
	private String address_line_two;
	private String city;
	private String state;
	private String landmark;
	private String phone;
	private String postelCode;
	private boolean shipping;
	private boolean billing;
	private int userid;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getAddress_line_one() {
		return address_line_one;
	}
	public void setAddress_line_one(String address_line_one) {
		this.address_line_one = address_line_one;
	}
	public String getAddress_line_two() {
		return address_line_two;
	}
	public void setAddress_line_two(String address_line_two) {
		this.address_line_two = address_line_two;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getLandmark() {
		return landmark;
	}
	public void setLandmark(String landmark) {
		this.landmark = landmark;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPostelCode() {
		return postelCode;
	}
	public void setPostelCode(String postelCode) {
		this.postelCode = postelCode;
	}
	public boolean isShipping() {
		return shipping;
	}
	public void setShipping(boolean shipping) {
		this.shipping = shipping;
	}
	public boolean isBilling() {
		return billing;
	}
	public void setBilling(boolean billing) {
		this.billing = billing;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	
	
	

}
