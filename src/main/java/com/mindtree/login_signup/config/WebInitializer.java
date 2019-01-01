package com.mindtree.login_signup.config;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration.Dynamic;

import org.springframework.web.WebApplicationInitializer;
import org.springframework.web.context.support.AnnotationConfigWebApplicationContext;
import org.springframework.web.servlet.DispatcherServlet;


public class WebInitializer implements WebApplicationInitializer{
	
	public void onStartup(ServletContext servletContext) throws ServletException {
		AnnotationConfigWebApplicationContext context = 
				new AnnotationConfigWebApplicationContext();
		
		context.register(WebConfigurator.class);
		context.setServletContext(servletContext);
		
		//dispatcher servlet
		Dynamic servlet = servletContext.addServlet("login", new DispatcherServlet(context));
		servlet.addMapping("/");
		servlet.setLoadOnStartup(3);
	}
}

