package com.bloodbook.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bloodbook.model.Feedback;



@Repository("feedbackDao")
public class FeedbackDaoImpl implements FeedbackDao{

	
	@Autowired
	private SessionFactory sessionFactory;
	
	
	@Override
	public void saveFeedback(Feedback feedback) {
		 System.out.println("This is Dao saveFeedback Methode before");
		sessionFactory.getCurrentSession().saveOrUpdate(feedback);
		 System.out.println("This is Dao saveFeedback Methode After");
	}
	
	@Override
	public Feedback getFeedback(Integer fbId) {
		System.out.println("This is Dao getFeedback Methode");
		return (Feedback)sessionFactory.getCurrentSession().get(Feedback.class,fbId);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Feedback> getFeedbackList() {	
		System.out.println("This is Dao getFeedbackList Methode");
		return sessionFactory.getCurrentSession().createQuery("from Feedback ORDER BY fb_id  DESC").list();
		}
	@SuppressWarnings("unchecked")
	@Override
	public List<Feedback> getFeedbackList10() {	
		System.out.println("This is Dao getFeedbackList10 Methode");
		return sessionFactory.getCurrentSession().createQuery("from Feedback ORDER BY fb_id  DESC").setMaxResults(10).list();
		}
	@SuppressWarnings("unchecked")
	@Override
	public List<Feedback> getFeedbackList1() {	
		System.out.println("This is Dao getFeedbackList10 Methode");
		return sessionFactory.getCurrentSession().createQuery("from Feedback ORDER BY fb_id  DESC").setMaxResults(1).list();
		}
}
