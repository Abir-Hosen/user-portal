package net.abir.userportal.controller;

import java.util.List;

import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import net.abir.portalbackend.dao.UserDao;
import net.abir.portalbackend.dto.User;


@Controller
@RequestMapping("/json/data")
public class JsonDataController {

	@Autowired
	private UserDao userDao;
	
//	@Produces({MediaType.APPLICATION_JSON, MediaType.APPLICATION_XML})
	@RequestMapping("/all/user")
	@ResponseBody
	public List<User> getAllproducts(){
		return userDao.userList();
	}
	
	
/*	@RequestMapping("/user/{id}")
	@ResponseBody
	public List<User> getProductByCategory(@PathVariable int id){
		return userDao.listById(id);                                       //*****     Method To Build      *****
	}*/
}
