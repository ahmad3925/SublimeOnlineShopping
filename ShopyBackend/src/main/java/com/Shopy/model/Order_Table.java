package com.Shopy.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.springframework.stereotype.Component;

import com.Shopy.model.Order_Item;

@Component
@Entity

public class Order_Table implements Serializable  {
	
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)

	private int id;
	private String name;
	private String email;
	private String address;
	
	
	@OneToMany(mappedBy="order1",fetch=FetchType.EAGER,cascade=CascadeType.ALL)
	List<Order_Item> order_item;


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public List<Order_Item> getOrder_item() {
		return order_item;
	}


	public void setOrder_item(List<Order_Item> order_item) {
		this.order_item = order_item;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	


}
