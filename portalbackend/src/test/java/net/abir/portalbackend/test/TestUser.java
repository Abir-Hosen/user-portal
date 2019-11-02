package net.abir.portalbackend.test;

import static org.junit.Assert.assertEquals;

import java.util.Date;
import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import net.abir.portalbackend.dao.UserDao;
import net.abir.portalbackend.dto.User;

public class TestUser {

	private static AnnotationConfigApplicationContext context;
	private static UserDao userDao;
	private User user;
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("net.abir.portalbackend");
		context.refresh();
		
		userDao = (UserDao) context.getBean("userDao");
	}
	
	@Test
	public void testAddUser() {
		user = new User() ;
		user.setFirst_name("Ashraful Islam");
		user.setLast_name("Ashraf");
		user.setAddress("Noakhali, Chittagong");
		user.setEmail("ashraful.51@bitmascot.com");
		user.setBirthdate(new Date());
		user.setPhone("01881915271");
		user.setPassword("12345");
		assertEquals("Failed to add the user!", true, userDao.addUser(user));
	

	}

}
