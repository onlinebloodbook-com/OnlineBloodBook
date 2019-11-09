package com.bloodbook.service;

import java.util.List;

import com.bloodbook.model.Feedback;

public interface FeedbackService {

	public void saveFeedback(Feedback feedback);
	public Feedback getFeedback(int fb_id);
	public List<Feedback> getFeedbackList();
	public List<Feedback> getFeedbackList10();
}
