package com.bloodbook.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bloodbook.dao.FeedbackDao;
import com.bloodbook.model.Feedback;



@Service
public class FeedbackServiceImpl implements FeedbackService {

	@Autowired
	private FeedbackDao feedbackDao;
	
	@Transactional
	public void saveFeedback(Feedback feedback) {
		 System.out.println("This is Service saveFeedback Methode Before");
		 feedbackDao.saveFeedback(feedback);
		 System.out.println("This is Service saveFeedback Methode After");	
	}
	
	@Transactional
	public Feedback getFeedback(int fb_id) {
		 System.out.println("This is Service getFeedback Methode");
		return feedbackDao.getFeedback(fb_id);
	}

	@Transactional
	public List<Feedback> getFeedbackList() {
		 System.out.println("This is Service getFeedbackList Methode");
		return feedbackDao.getFeedbackList();
		
	}
	@Transactional
	public List<Feedback> getFeedbackList10() {
		 System.out.println("This is Service getFeedbackList10 Methode");
		return feedbackDao.getFeedbackList10();
	}
}
