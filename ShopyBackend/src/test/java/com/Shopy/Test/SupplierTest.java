package com.Shopy.Test;

import static org.junit.Assert.assertTrue;
import static org.junit.Assert.fail;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.Shopy.DAO.SupplierDAO;
import com.Shopy.model.Supplier;


public class SupplierTest {
	
	private static AnnotationConfigApplicationContext context=null;
	private static SupplierDAO SupplierDAO=null;
	

	@BeforeClass  //static function; always runs before a test
	public static void setUpBeforeClass() throws Exception {
		context=new AnnotationConfigApplicationContext();
		context.scan("com.Shopy");
		context.refresh();
		SupplierDAO=(SupplierDAO) context.getBean("supplierDAO");
	}

	@Test
	public void testaddSupplier() {
		Supplier supplier= new Supplier();
		supplier.setSupplierName("FBB");
	
		 assertTrue("Cannot save the value please check code!", SupplierDAO.addSupplier(supplier));
		}
		
	
    
	@Ignore
	@Test
	public void testUpdateSupplier() {
	
	}
	@Ignore
	@Test
	public void testDeleteSupplier() {
		
	}

	@Ignore
	@Test
	public void testGetSingleSupplier() {
		fail("Not yet implemented");
	}

	@Ignore
	@Test
	public void testGetAllSupplier() {
		fail("Not yet implemented");
	}

}