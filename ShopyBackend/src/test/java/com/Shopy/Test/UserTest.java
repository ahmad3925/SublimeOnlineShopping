package com.Shopy.Test;

import static org.junit.Assert.assertTrue;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.Shopy.DAO.UserDAO;
import com.Shopy.model.User;


public class UserTest {
	
	private static AnnotationConfigApplicationContext context=null;
	private static UserDAO UserDAO=null;
	
	@BeforeClass
    public static void setUpBeforeClass() throws Exception{
		context =new AnnotationConfigApplicationContext();
		context.scan("com.Shopy");
		context.refresh();
		UserDAO=(UserDAO)context.getBean("UserDAO");
	}

	@Test
	public void testAddUser() {
	 User user= new User();
	 user.setPassword("12345");
	 user.setEmail("ah3925@gmail.com");
	 user.setFirstName("Ahmad");
	 user.setLastName("Hussain");
	 user.setMobile("8235132719");

	 
	 assertTrue("Cannot save the value please check code!", UserDAO.addUser(user));
	}


}
