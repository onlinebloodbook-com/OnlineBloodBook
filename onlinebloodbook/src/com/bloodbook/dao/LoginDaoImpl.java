package com.bloodbook.dao;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;





import org.springframework.transaction.annotation.Transactional;

import com.bloodbook.model.Register;


@Repository("LoginDao")
@Transactional
public class LoginDaoImpl implements LoginDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	  protected Session getSession(){
          return sessionFactory.openSession();
   }
	  @SuppressWarnings("unchecked")
	  @Override
	  public List<Register> checkLogin(String userId, String userPassword){
		 
		 Session session = sessionFactory.openSession();
	        session.beginTransaction();
	        boolean userFound = false;
	       /* String SQL_QUERY = " from Register r where r.userId='" + userId + "' and r.userPassword='" + userPassword + "'";
	        System.out.println(SQL_QUERY);
	        Query query = session.createQuery(SQL_QUERY);*/
	        System.out.println(userId);
	        Query query = sessionFactory.getCurrentSession().createQuery("from Register where userId='" + userId + "' and userPassword='" + userPassword + "'");
	      /*  Iterator<Register> it = query.iterate();*/
	        List<Register> list = query.list();
	        System.out.println("brfore if in dao");
	        if (list.size() > 0) {
	       
	            System.out.println("True");
	            userFound= true;
	        }
	        System.out.println("befire session");
	     
	        System.out.println("after session");
	        
			return list;
		 
		 
		 
			/*System.out.println("In Check login");
			Session session = sessionFactory.openSession();
			boolean userFound = false;
			//Query using Hibernate Query Language
			String SQL_QUERY =" from Register l where l.userId='" + userId + "' and l.userPassword='" + userPassword + "'";
			Query query = session.createQuery(SQL_QUERY);
			query.setParameter(0,userId);
			query.setParameter(1,userPassword);
			List list = query.list();
           System.out.println("login before if");
			if ((list != null) && (list.size() > 0)) {
				userFound= true;
			}

			session.close();
			return userFound;  */            
    }
	
	
	
	
	
	/*@Override
	public int LoginRegistration(String userId, String userPassword) {
		
		org.hibernate.classic.Session session = sessionFactory
				.getCurrentSession();
		String hql = "from Register l where l.userId='" + userId
				+ "' and l.userPassword='" + userPassword + "'";
		
		System.out.println("login Dao");
		
		@SuppressWarnings("unchecked")
		List<Register> list = session.createQuery(hql).list();
		if (!list.isEmpty()) {

			return 1;
		} else {
			return 2;
		}
		
	}*/
		
	
	/*	
		org.hibernate.classic.Session session = sessionFactory.getCurrentSession();
		String hql = "from Register l where user_id='"+userId+"' and user_password='" + userPassword + "'";
		@SuppressWarnings({ "unchecked", "unused" })
		List<Register> list = session.createQuery(hql).list();
		return 0;
	}*/
}
