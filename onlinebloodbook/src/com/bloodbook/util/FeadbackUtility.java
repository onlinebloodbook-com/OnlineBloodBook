package com.bloodbook.util;

import java.util.ArrayList;
import java.util.List;
import com.bloodbook.bean.FeedbackBean;
import com.bloodbook.model.Feedback;



public class FeadbackUtility {

	public static Feedback createModel(FeedbackBean feedbackBean){
		System.out.println("This is commonUtility2 createModel Methode Before feedback Object");
		
		Feedback feedback=new Feedback();
		
		feedback.setFbId(feedbackBean.getFbId());
		feedback.setFbName(feedbackBean.getFbName());
		feedback.setFbContactNo(feedbackBean.getFbContactNo());
		feedback.setFbEmail(feedbackBean.getFbEmail());
		feedback.setFbComment(feedbackBean.getFbComment());
		System.out.println("This is commonUtility createModel Methode After register Object");
		return feedback;
		
	}
	
   public static List<FeedbackBean> createFeedbackBeanList(List<Feedback> feedbacks){
		
		System.out.println("This is commonUtility2 createFeedbackBeanList Methode Before feedback Object");
		
		List<FeedbackBean> beans=new ArrayList<FeedbackBean>();
		System.out.println("This is commonUtility2 beans");
		FeedbackBean feedbackBean=null;
		for(Feedback feedback: feedbacks){
			feedbackBean=new FeedbackBean();
			
			feedbackBean.setFbId(feedback.getFbId());
			feedbackBean.setFbName(feedback.getFbName());
			feedbackBean.setFbContactNo(feedback.getFbContactNo());
			feedbackBean.setFbEmail(feedback.getFbEmail());
			feedbackBean.setFbComment(feedback.getFbComment());
			feedbackBean.setFbDate(feedback.getFbDate());
		
         beans.add(feedbackBean);
			
			
			
		}
		System.out.println("This is commonUtility2 createRegisterBeanList Methode Before return beans Object");
		return beans;
		
	}
}
