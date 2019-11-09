package com.bloodbook.action;

import java.io.IOException;
import java.util.List;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.bloodbook.bean.FeedbackBean;
import com.bloodbook.service.FeedbackService;
import com.bloodbook.util.FeadbackUtility;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@Controller
public class FeedbackAction extends ActionSupport implements ModelDriven<FeedbackBean> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	// Logger configured using log4j (sri)
	private static final Logger logger = Logger.getLogger(FeedbackAction.class);

	@Autowired
	private FeedbackBean feedbackBean;
	@Autowired
	private FeedbackService feedbackService;

	private List<FeedbackBean> feedbacks;

	public String execute() throws IOException {
		PropertyConfigurator.configure("log4j.properties");
		logger.debug("This is DEBUG");
		logger.info("This is INFO");
		logger.warn("This is WARN");
		logger.error("This is ERROR");
		logger.fatal("This is FATAL");
		feedbacks = FeadbackUtility.createFeedbackBeanList(feedbackService
				.getFeedbackList10());
		return "feedback";
	}

	public String addFeedback() {
		System.out.println("This is addFeedback Methode Before");
		feedbackService.saveFeedback(FeadbackUtility.createModel(feedbackBean));
		feedbacks = FeadbackUtility.createFeedbackBeanList(feedbackService
				.getFeedbackList10());
		System.out.println("This is addFeedback Methode After");
		return "addFeedback";
	}

	public String getFeedback() {
		System.out.println("This is getFeedback Methode Before");
		feedbackService.getFeedback(feedbackBean.getFbId());
		System.out.println("This is getFeedback Methode After");
		return "getFeedback";
	}

	public String listFeedback() {
		System.out.println("This is listFeedback Methode Before");
		logger.info("listFeedback method called");
		feedbacks = FeadbackUtility.createFeedbackBeanList(feedbackService.getFeedbackList());
		System.out.println("This is listFeedback Methode After");
		return "listFeedback";
	}

	public String listFeedback10() {
		System.out.println("This is listFeedback10 Methode Before");
		feedbacks = FeadbackUtility.createFeedbackBeanList(feedbackService
				.getFeedbackList10());
		System.out.println("This is listFeedback10 Methode After");
		return "listFeedback10";
	}

	@Override
	public FeedbackBean getModel() {
		return feedbackBean;
	}

	public List<FeedbackBean> getFeedbacks() {
		return feedbacks;
	}

	public void setFeedbacks(List<FeedbackBean> feedbacks) {
		this.feedbacks = feedbacks;
	}

	public String feedback() {
		return "feedback";
	}

}
