package com.cdac.springproject.dao;

import java.util.List;

import com.cdac.springproject.dto.User;

public interface UserDao {	
	public void save(User user);	
	public void deleteById(String emailAddress);	
	public void update(User user) ;
	public List<User> getAll() ;
	public User validateUser(User user);
	
}

