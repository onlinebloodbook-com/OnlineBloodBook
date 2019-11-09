package com.bloodbook.dao;

import java.util.List;

import com.bloodbook.model.Feedback;;

public interface FeedbackDao {

	public void saveFeedback(Feedback feedback);
	public Feedback getFeedback(Integer fbId);
	public List<Feedback> getFeedbackList();
	public List<Feedback> getFeedbackList10();
	public List<Feedback> getFeedbackList1();
}
