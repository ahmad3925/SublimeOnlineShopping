package com.Shopy.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Product {
	
	// private fields
		@Id
		@GeneratedValue(strategy = GenerationType.AUTO)
		private int prodid;
		private String prodName;
		private String categoryId;
		private String supplierId;
		private String description;
		private double unitPrice;
		private int quantity;
		private boolean active;
		private String code;
		
		
		public int getProdid() {
			return prodid;
		}
		public void setProdid(int prodid) {
			this.prodid = prodid;
		}
		
		public String getProdName() {
			return prodName;
		}
		public void setProdName(String prodName) {
			this.prodName = prodName;
		}
		
		public String getCategoryId() {
			return categoryId;
		}
		public void setCategoryId(String categoryId) {
			this.categoryId = categoryId;
		}
		
		public String getSupplierId() {
			return supplierId;
		}
		public void setSupplierId(String supplierId) {
			this.supplierId = supplierId;
		}
		
		public String getDescription() {
			return description;
		}
		public void setDescription(String description) {
			this.description = description;
		}
		public double getUnitPrice() {
			return unitPrice;
		}
		public void setUnitPrice(double unitPrice) {
			this.unitPrice = unitPrice;
		}
		public int getQuantity() {
			return quantity;
		}
		public void setQuantity(int quantity) {
			this.quantity = quantity;
		}
		public boolean isActive() {
			return active;
		}
		public void setActive(boolean active) {
			this.active = active;
		}
		public String getCode() {
			return code;
		}
		public void setCode(String code) {
			this.code = code;
		}


}
