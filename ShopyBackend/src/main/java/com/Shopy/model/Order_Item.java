package com.Shopy.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

import org.springframework.stereotype.Component;

import com.Shopy.model.Order_Table;
import com.Shopy.model.Product;

@Component
@Entity
public class Order_Item {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int orderItem_id;
	
	@OneToOne
	private Product product;
	
	@ManyToOne
	@JoinColumn(name="order_id", nullable=false)
	
	private Order_Table order1;
	
	
	@Column(name = "product_count")
	private int productCount;
	
	
	private double total;
	
	@Column(name = "buying_price")
	private double buyingPrice;

	public int getOrderItem_id() {
		return orderItem_id;
	}

	public void setOrderItem_id(int orderItem_id) {
		this.orderItem_id = orderItem_id;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Order_Table getOrder1() {
		return order1;
	}

	public void setOrder1(Order_Table order1) {
		this.order1 = order1;
	}

	public int getProductCount() {
		return productCount;
	}

	public void setProductCount(int productCount) {
		this.productCount = productCount;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	public double getBuyingPrice() {
		return buyingPrice;
	}

	public void setBuyingPrice(double buyingPrice) {
		this.buyingPrice = buyingPrice;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
}
