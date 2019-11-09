package com.bloodbook.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bloodbook.model.Request;

@Repository("requestDao")
public class RequestDaoImpl implements RequestDao{
	@Autowired
	private SessionFactory sessionFactory;


	@Override
	public void saveRequest(Request request) {
		sessionFactory.getCurrentSession().save(request);

	}
	
	@Override
	public void updateRequest(Request request) {
		sessionFactory.getCurrentSession().update(request);
	}
	
	@Override
	public void deleteRequest(int reqId) {
		sessionFactory.getCurrentSession().delete(getRequest(reqId));
	}
	
	@Override
	public Request getRequest(Integer reqId) {
		return (Request)sessionFactory.getCurrentSession().get(Request.class,reqId);
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Request> getRequestList() {	
		return sessionFactory.getCurrentSession().createQuery("from Request ORDER BY req_id  DESC").list();
		}
	@SuppressWarnings("unchecked")
	@Override
	public List<Request> getRequestList10() {	
		return sessionFactory.getCurrentSession().createQuery("from Request ORDER BY req_id  DESC").setMaxResults(5).list();
		}
	@SuppressWarnings("unchecked")
	@Override
	public List<Request> getRequestList1() {	
		return sessionFactory.getCurrentSession().createQuery("from Request ORDER BY req_id  DESC").setMaxResults(1).list();
		}
}
