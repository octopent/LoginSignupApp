package com.mindtree.login_signup.model;

import com.mindtree.login_signup.dao.UserDao;
import com.mindtree.login_signup.dao.UserDaoImpl;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(path="/login")
public class UserController {
	UserDao daoObj = new UserDaoImpl(); 
	@RequestMapping(method=RequestMethod.POST)
	public String processUser(Model model, User user) {
		//validating 
		boolean valid; 
		model.addAttribute("userItem", user);		
		valid = daoObj.validate(user);
		if(valid == true)
			return "homepage";
		else
			return "errorpage";
	}
}
