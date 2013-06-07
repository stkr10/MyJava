package com.hibernateUtil;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;


public class HibernateHelper {

	private static final SessionFactory sessionFactory =  buildSessionFactory();
	
	public static SessionFactory buildSessionFactory(){
		
		return new Configuration().configure().buildSessionFactory();
		
		
	}

	public static SessionFactory getSessionfactory() {
		return sessionFactory;
	}


	
}
