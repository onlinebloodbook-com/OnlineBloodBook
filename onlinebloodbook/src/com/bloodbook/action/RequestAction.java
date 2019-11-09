package com.bloodbook.action;

import java.util.List;

import javax.mail.internet.MimeMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import com.bloodbook.bean.RequestBean;
import com.bloodbook.service.RequestService;
import com.bloodbook.util.RequestUtility;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class RequestAction extends ActionSupport implements ModelDriven<RequestBean> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Autowired
	private RequestBean requestBean;
	@Autowired
	private RequestService requestService;
	private List<RequestBean> requests;
	private RequestBean bean;
	
	@Autowired
	private JavaMailSender mailSender;
	
	public String execute(){
		System.out.println("This is Request Execute Methode");
		return "request";
	}
	
	public String update(){
		System.out.println("This is Request update Methode");
		requests = RequestUtility.createRequestBeansList(requestService.getRequestList1()); 
		return "update";
	}
	
	public String addRequest(){
		System.out.println("This is addRequest Methode Before");
		requestService.saveRequest(RequestUtility.createModel(requestBean));
		requests = RequestUtility.createRequestBeansList(requestService.getRequestList1());
				// for logging
				System.out.println("reqEmail: " + requestBean.getReqEmail());
				System.out.println("reqName: " + requestBean.getReqName());
				System.out.println("patientAddress: " + requestBean.getPatientAddress());
				
				
				mailSender.send(new MimeMessagePreparator() {
					public void prepare(MimeMessage mimeMessage) throws Exception {
						MimeMessageHelper messageHelper = new MimeMessageHelper(mimeMessage, true);
						messageHelper.setTo(requestBean.getReqEmail());
						messageHelper.setSubject("Online Blood Book");
						
						 StringBuilder text = new StringBuilder();
					
						         text.append("<html>");
						         text.append("<body>");
						         text.append("<h2>Dear "+requestBean.getReqName()+"</h2>");
						         text.append("<p>Wishing you a very happy birthday " + requestBean.getReqName() + ".");
						         text.append("<p><img src=\"cid:greetingImage\"/>");
						         text.append("</body>");
						         text.append("</html>");
						         // Sets the text
						         messageHelper.setText(text.toString(), true);

						/*
						messageHelper.setText("Dear " + requestBean.getReqBloodGroup()
				                + requestBean.getReqName()
				                + ", thank you for placing order. Your order number is "
				                + requestBean.getReqEmail());*/
					}

				});
		 
		System.out.println("This is addRequest Methode After");
		  return "addRequest";  
	}
	public String updateRequest(){
		System.out.println("This is updateRequest Methode Before");
		requestService.updateRequest(RequestUtility.createModel(requestBean));
		requests = RequestUtility.createRequestBeansList(requestService.getRequestList1()); 
		System.out.println("This is updateRequest Methode After");
		  return "updateRequest";  
	}
	public String getRequest(){
		System.out.println("This is Action Request getRequest Methode Before");
		bean =RequestUtility.prepareRequestBean(requestService.getRequest(requestBean.getReqId()));
		 System.out.println("This is Action Request getRequest Methode After");
		  return "getRequest"; 
	}
	
	
	public String listRequest(){  
		  requests = RequestUtility.createRequestBeansList(requestService.getRequestList());  
		  return "listRequest";  
		 }  
	public String home(){  
		  requests = RequestUtility.createRequestBeansList(requestService.getRequestList10());  
		  return "home";  
		 }  
	
	@Override  
	 public RequestBean getModel() {  
	  return requestBean;  
	 }

	public List<RequestBean> getRequests() {
		return requests;
	}
	public void setRequests(List<RequestBean> requests) {
		this.requests = requests;
	}
	public String request()
	{
		return "request";		
	}
	public String all_req_list()
	{
		return "all_req_list";		
	}

	public String req_succes()
	{
		return "req_succes";		
	}
	public RequestBean getBean() {
		return bean;
	}

	public void setBean(RequestBean bean) {
		this.bean = bean;
	}

	public JavaMailSender getMailSender() {
		return mailSender;
	}

	public void setMailSender(JavaMailSender mailSender) {
		this.mailSender = mailSender;
	}

	
}
