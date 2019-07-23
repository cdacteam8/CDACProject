package com.cdac.springproject.serv;

import java.util.List;

import com.cdac.springproject.dto.User;

public interface UserService {	
	public void createUser(User user);
	public void removeUser(int userId);
	public void modifyUser(User user);
	public List<User> selectAllUsers();
	public User checkUser(User user);
	
}


