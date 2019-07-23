package com.cdac.springproject.cntr;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cdac.springproject.dto.User;
import com.cdac.springproject.serv.UserService;


@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/prep_login_form.htm")
	public String prepLoginForm(ModelMap model) {
		model.put("user", new User());
		return "index";
	}
	
	@RequestMapping(value = "/prep_reg_form.htm")
	public String prepRegForm(ModelMap model) {
		model.put("user", new User());
		return "reg_form";
	}
	
	@RequestMapping(value = "/reg.htm")
	public String register(User user,ModelMap model) {
		userService.createUser(user);
		model.put("user", new User());
		return "index";
	}
	
	@RequestMapping(value = "/login.htm")
	public String login(User user,ModelMap model,HttpSession session) {
		
		User b = userService.checkUser(user);
		String role = b.getUserRole();
		if(b!= null && role.equals("candidate")) {
			session.setAttribute("user", b);
			return "home";
		}
		
		else if(b!= null && role.equals("admin")) {
			session.setAttribute("user", b);
			List<User> ulist = userService.selectAllUsers();
			model.put("ul", ulist);
			return "user_list";
		}
		
		else {
			model.put("user", new User());
			return "index";
			}
		
	}
	
	@RequestMapping(value = "/user_list.htm")
	public String userList(ModelMap model) {
		List<User> ulist = userService.selectAllUsers();
		model.put("ul", ulist);
		return "user_list";
	}
	
	@RequestMapping(value = "/delete_user.htm")
	public String deleteUser(@RequestParam int userId,ModelMap model) {
		userService.removeUser(userId);
		List<User> ulist = userService.selectAllUsers();
		model.put("ul", ulist);
		return "user_list";
	}
	
	@RequestMapping(value ="/logout.htm")
	public String logout() {
		
		return "logout";
	}
	
}