package com.Shopy.DAO;

import java.util.List;

import com.Shopy.model.Product;

public interface ProductDAO {

	public boolean addProduct(Product product);
	public boolean updateProduct(Product product);
	public boolean deleteProduct(int prodid);

	public Product getSingleProduct(int prodid);
	public List<Product> getAllProduct();
	public List<Product> getAllProductKeywords(String Keyword);
	List<Product> getProductByCategory(int categoryid);

}
