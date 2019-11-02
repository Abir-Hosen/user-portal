package net.abir.userportal.handler;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

import net.abir.portalbackend.dao.UserDao;
import net.abir.portalbackend.dto.User;
import net.abir.userportal.model.RegisterModel;

@Component
public class RegisterHandler {
	
	@Autowired
	private UserDao userDao;
	
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	public RegisterModel init() {
		
		return new RegisterModel();
	}
	
	public String validateUser(User user, MessageContext error) {
		
		String transitionValue="success";
		
		if(userDao.getByEmail(user.getEmail())!=null) {
			error.addMessage(new MessageBuilder()
					.error()
					.source("email")
					.defaultText("Email address is already used!")
					.build());
					
			transitionValue="failure";
		}
		
		return transitionValue;
	}
	
	public void addUser(RegisterModel registerModel, User user) {
		registerModel.setUser(user);
	}
	
	public String saveAll(RegisterModel model) {
		String transitionValue ="success";
		
		User user=model.getUser();
		user.setPassword(passwordEncoder.encode(user.getPassword()));
		
		userDao.addUser(user);
		
		return transitionValue;
	}
}
