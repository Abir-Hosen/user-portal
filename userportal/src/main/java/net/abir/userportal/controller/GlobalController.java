package net.abir.userportal.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import net.abir.portalbackend.dao.UserDao;
import net.abir.portalbackend.dto.User;
import net.abir.userportal.model.UserModel;

@ControllerAdvice
public class GlobalController {
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private UserDao userDao;
	
	private UserModel userModel = null;
	
	@ModelAttribute("userModel")
	public UserModel getUserModel() {
		if(session.getAttribute("userModel")==null) {
			Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
			User user=userDao.getByEmail(authentication.getName());
			if(user!=null) {
				userModel = new UserModel();
				userModel.setId(user.getId());
				userModel.setEmail(user.getEmail());
				userModel.setFirst_name(user.getFirst_name());
				userModel.setLast_name(user.getLast_name());
				userModel.setAddress(user.getAddress());
				userModel.setAge(user.getAge());
				userModel.setPhone(user.getPhone());
				userModel.setBirthdate(user.getBirthdate());
				
				session.setAttribute("userModel", userModel);
				
				return userModel;
			}
		}
		
		return (UserModel) session.getAttribute("userModel");
	}

}
