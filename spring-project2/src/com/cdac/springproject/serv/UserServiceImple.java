package com.cdac.springproject.serv;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdac.springproject.dao.UserDao;
import com.cdac.springproject.dto.User;


@Service
public class UserServiceImple implements UserService {
	@Autowired
	private UserDao userDao;
	
	
	public void createUser(User user) {
		userDao.save(user);
	}
	
	public void removeUser(String emailAddress) {
		userDao.deleteById(emailAddress);
	}
	
	public void modifyUser(User user) {
		userDao.update(user);
	}
	
	public List<User> selectAllUsers() {
		return userDao.getAll();
	}
	
	@Override
	public User checkUser(User user) {
		return userDao.validateUser(user);
	}
	
	
	
	
}
