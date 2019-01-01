package com.mindtree.login_signup.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.mindtree.login_signup.model.User;
import com.mindtree.login_signup.utililty.SessionFetcher;


public class UserDaoImpl implements UserDao{

	public boolean validate(User user) {
		List<User> userlist = new ArrayList<>();
		
		Session session = SessionFetcher.createConnection();
		Transaction txn = session.beginTransaction(); 

		Query query = session.createQuery("from User where username=:uname and password=:pwd");
		query.setParameter("uname", user.getUsername());
		query.setParameter("pwd", user.getPassword());
		
		userlist = query.getResultList();
				
		if(userlist.size()>0) {
			return true;
		}
		else 
			return false;
	}
}
