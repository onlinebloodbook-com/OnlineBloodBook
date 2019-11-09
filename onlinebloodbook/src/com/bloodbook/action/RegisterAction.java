package com.bloodbook.action;

import java.util.List;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Controller;

import com.bloodbook.bean.RegisterBean;
import com.bloodbook.service.RegisterService;
import com.bloodbook.util.RegisterUtility;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@Controller
public class RegisterAction extends ActionSupport implements ModelDriven<RegisterBean>{
	
	private static final long serialVersionUID = 1L;
     
	@Autowired
	private RegisterBean registerBean;
	@Autowired
	private RegisterService registerService;
	
	private List<RegisterBean> registers;
		
	private RegisterBean bean;
	
	@Autowired
	private JavaMailSender mailSender;
	
	//This is Register page,register.jsp page will open
	  public String execute() throws Exception {
		  try {
			
		} catch (Exception e) {
		   throw new Exception("Error from Action Register Execute Methode: " + e.getMessage());
		}
		return "register";
	}
	  
  //This is Add Register and automatic mail sending through gmail, after reg_succes.jsp page will open
	public String addRegister() throws Exception{
		try {
			
			registerService.saveRegistration(RegisterUtility.createModel(registerBean));
			registers = RegisterUtility.createRegisterBeanList(registerService.getRegisterList1());
			
			// for logging
			System.out.println("reqEmail: " + registerBean.getRegEmail());
			System.out.println("reqName: " + registerBean.getRegName() );
			System.out.println("patientAddress: " + registerBean.getRegAddress());
			
			mailSender.send(new MimeMessagePreparator() {

				public void prepare(MimeMessage mimeMessage) throws Exception {
				MimeMessageHelper messageHelper = new MimeMessageHelper(mimeMessage, true, "UTF-8");
					messageHelper.setTo(registerBean.getRegEmail());
					messageHelper.setSubject(registerBean.getRegName());
					messageHelper.setText(registerBean.getRegAddress());
				}

			});
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
			throw new Exception("Error from AddRegister Action: " + e.getMessage());
			
		}
		  return "addRegister";  
	}
	
  //This is update,update_register.jsp page will open
	public String update() throws Exception {
		try {
			registers = RegisterUtility.createRegisterBeanList(registerService.getRegisterList1());
		} catch (Exception e) {
			throw new Exception("Error from Action Register update Methode: " + e.getMessage());
		}
			return "update";
		}
	
	//This is update register, update_succes.jsp page will open
		 public String updateRegister() throws Exception{
			 try {
				 registerService.updateRegistration(RegisterUtility.createModel(registerBean));
				 registers = RegisterUtility.createRegisterBeanList(registerService.getRegisterList1());
			} catch (Exception e) {
				throw new Exception("Error from Action Register updateRegister Methode: " + e.getMessage());
			}
			  return "updateRegister";  
		}
		 
		//This is Login success page,Login_Success.jsp page will open
			public String loginSuccess() throws Exception{
				try {
					registers = RegisterUtility.createRegisterBeanList(registerService.getLogin(registerBean.getUserId(), registerBean.getUserPassword()));
				} catch (Exception e) {
					throw new Exception("Error from  Action Login Methode: " + e.getMessage());
				}
				return "loginSuccess";	
			}
			
		//This is Login Update, login_update.jsp page will open
			public String loginUpdate() throws Exception {
				try {
					bean =RegisterUtility.prepareRegisterBean(registerService.getRegister(registerBean.getRegId()));
				} catch (Exception e) {
					throw new Exception("Error from Action Register loginUpdate Methode: " + e.getMessage());
				}
					return "loginUpdate";
				}
			
	 //This is Login update Success, login_update_succes.jsp page will open
		 public String loginUpdateSuccess() throws Exception{
			 try {
				 registerService.updateRegistration(RegisterUtility.createModel(registerBean));
				 registers = RegisterUtility.createRegisterBeanList(registerService.getRegisterList1());
			} catch (Exception e) {
				throw new Exception("Error from Action Register loginUpdateSuccess Methode: " + e.getMessage());
			}
			  return "loginUpdateSuccess";  
		}
		 
	//This is Get the Register Details page,get_register.jsp page will open	 	 
	public String getRegister() throws Exception{
		try {
			bean =RegisterUtility.prepareRegisterBean(registerService.getRegister(registerBean.getRegId()));	
		} catch (Exception e) {
			throw new Exception("Error from Action Register getRegister Methode: " + e.getMessage());
		}
		  return "getRegister"; 
	}
	
	//This is List of All Register page, all_reg_list.jsp page will open
	public String listRegister() throws Exception{  
		try {
		   registers = RegisterUtility.createRegisterBeanList(registerService.getRegisterList());
		} catch (Exception e) {
			throw new Exception("Error from Action Register ListRegister Methode: " + e.getMessage());
		}
		  return "listRegister";  
		 } 
	
	//This is search register list page,searchList.jsp page will open
	public String searchList() throws Exception{
		try {
			registers = RegisterUtility.createRegisterBeanList(registerService.searchList(registerBean.getRegBloodAvailability(),registerBean.getRegBloodGroup(),registerBean.getRegState(),registerBean.getRegDistrict(),registerBean.getRegCity()));
		} catch (Exception e) {
			throw new Exception("Error from Action SearchList Methode: " + e.getMessage());
		}
		return "searchList";
	}
	
	//This is ModelDriven for RegisterBean object
	@Override  
	 public RegisterBean getModel() {  
	  return registerBean;  
	 }

	public List<RegisterBean> getRegisters() {
		return registers;
	}

	public void setRegisters(List<RegisterBean> registers) {
		this.registers = registers;
	}  
	
	public String register()
	{
		return "register";		
	}
	public String all_reg_list()
	{
		return "all_reg_list";		
	}
	
	
	public String reg_succes()
	{
		return "reg_succes";		
	}
	public RegisterBean getBean() {
		return bean;
	}
	public void setBean(RegisterBean bean) {
		this.bean = bean;
	}

	public String update_register()
	{
		return "update_register";		
	}
	
	public String update_succes()
	{
		return "update_succes";		
	}
	
}
	

