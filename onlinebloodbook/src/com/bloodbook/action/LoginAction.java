package com.bloodbook.action;

import org.springframework.beans.factory.annotation.Autowired;
import com.bloodbook.bean.RegisterBean;
import com.bloodbook.service.LoginService;
import com.opensymphony.xwork2.ActionSupport;


public class LoginAction extends ActionSupport{

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Autowired
	private RegisterBean registerBean;
	@Autowired
	private LoginService loginService;
	
	
	//private List<RegisterBean> registers;
	/* public String execute() {
		// registers = CommonUtility.createRegisterBeanList(loginService.LoginRegistration(registerBean.getUserId(), null);
		 int check = loginService.LoginRegistration(registerBean.getUserId(), registerBean.getUserPassword());
		 System.out.println("Login Action");
		 System.out.println(registerBean.getUserId());
			if (check == 1) {
				//model.put("user", login.getUsername());
				return "success";
			} else {
				return "error";
			}	
			
	    }*/
/*
	 @SuppressWarnings({ "rawtypes", "unchecked" })
	public String execute(@Valid Login login, BindingResult result, Map model)  throws Exception {

			
		if (result.hasErrors()) {
				return "SUCCESS";
			}
			
			
			String userName = "UserName";
			String password = "password";
			loginForm = (LoginForm) model.get("loginForm");
			if (!loginForm.getUserName().equals(userName)
					|| !loginForm.getPassword().equals(password)) {
				return "loginform";
			}
			
			boolean userExists = loginService.checkLogin(login.getUserId(),login.getUserPassword());
			if(userExists){
				model.put("login", login);
				return "SUCCESS";
			}else{
				result.rejectValue("userId","invaliduser");
				return "ERROR";
			}

		}*/
	
	 public String execute(){  
		System.out.println("Login Action");
		 if(loginService.checkLogin(registerBean.getUserId(), registerBean.getUserPassword())){  
			 System.out.println("Login Success");
		     return "SUCCESS";  
		 }  
		 else{  
			 System.out.println("Login Error");
		     return "ERROR";  
		 }  
		 }  
	 
}
