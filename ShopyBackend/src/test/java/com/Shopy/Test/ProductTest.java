package com.Shopy.Test;

import static org.junit.Assert.assertTrue;
import static org.junit.Assert.fail;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.Shopy.DAO.ProductDAO;
import com.Shopy.model.Product;

public class ProductTest {
	
	private static AnnotationConfigApplicationContext context=null;
	private static ProductDAO ProductDAO=null;
	

	@BeforeClass  //static function; always runs before a test
	public static void setUpBeforeClass() throws Exception {
		context=new AnnotationConfigApplicationContext();
		context.scan("com.Shopy");
		context.refresh();
		ProductDAO=(ProductDAO) context.getBean("productDAO");
	}
	
	@Test
	public void testaddProduct() {
		 Product product= new Product();
		 product.setProdName("Mobile");
		 product.setCategoryId("12");
		 product.setSupplierId("21");
		 product.setQuantity(200);
		 product.setUnitPrice(1200);

		 
		 assertTrue("Cannot save the value please check code!", ProductDAO.addProduct(product));
		}
		
	  
		@Ignore
		@Test
		public void testUpdateProduct() {
			Product Product=ProductDAO.getSingleProduct(2);

			assertTrue("Cannot save the value, please check the code!!", ProductDAO.updateProduct(Product));
		}

		@Ignore
		@Test
		public void testDeleteProduct() {
			
		}

		@Ignore
		@Test
		public void testGetSingleProduct() {
			fail("Not yet implemented");
		}

		@Ignore
		@Test
		public void testGetAllProduct() {
			List<Product> list=ProductDAO.getAllProductKeywords("Computer");
		for (Product pro:list) {
			System.out.println(pro.getProdid());
		}
			assertTrue("could not fetch list",list.size()>0);
		}
	



}
