package com.mindtree.login_signup.utililty;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.mindtree.login_signup.model.User;

public class SessionFetcher {
	public static Session createConnection() {
		Configuration configuration = new Configuration()
				.configure()
				.addAnnotatedClass(User.class);
		SessionFactory sf = configuration.buildSessionFactory(); 
		Session session = sf.openSession(); 
		return session;
	}
}
