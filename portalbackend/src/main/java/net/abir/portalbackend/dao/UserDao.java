package net.abir.portalbackend.dao;

import java.util.List;

import net.abir.portalbackend.dto.User;

public interface UserDao {
	
	boolean addUser(User user);
	List<User> userList();
	User getByEmail(String email);
	boolean updatePassword(User user);
	
	

}
