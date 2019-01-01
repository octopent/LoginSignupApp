package com.mindtree.login_signup.dao;

import com.mindtree.login_signup.model.User;

public interface UserDao {
	public boolean validate(User user);
}
