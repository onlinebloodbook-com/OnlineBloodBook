package com.bloodbook.action;


import java.io.IOException;
import java.util.List;

import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;
import org.springframework.beans.factory.annotation.Autowired;



import org.springframework.stereotype.Controller;

import com.bloodbook.bean.HelpBean;
import com.bloodbook.service.HelpService;
import com.bloodbook.util.HelpUtility;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

@Controller
public class HelpAction  extends ActionSupport implements ModelDriven<HelpBean>{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	
	
	 //Logger configured using log4j
    private static final Logger logger = Logger.getLogger(HelpAction.class);
    
	@Autowired
	private HelpBean helpBean;
	@Autowired
	private HelpService helpService;
	
	private List<HelpBean> helps;
	
	public String execute() throws IOException {
		  PropertyConfigurator.configure("log4j.properties");
		  logger.debug("This is DEBUG");
		  logger.info("This is INFO");
		  logger.warn("This is WARN");
		  logger.error("This is ERROR");
		  logger.fatal("This is FATAL");
		   helps = HelpUtility.createHelpBeanList(helpService.getHelpList10());
			return "help";
		}
	
	
	
	public String addHelp(){
		
		helpService.saveHelp(HelpUtility.createModel(helpBean));
		helps = HelpUtility.createHelpBeanList(helpService.getHelpList10());
		
		  return "addHelp";  
	}

	public String getHelp(){
		
		helpService.getHelp(helpBean.getHpId());
		
		  return "getHelp";  
	}
	public String listHelp(){  
		
		  helps = HelpUtility.createHelpBeanList(helpService.getHelpList());
		 
		  return "listHelp";  
		 }  
	public String listFeedback10(){  
		
		helps = HelpUtility.createHelpBeanList(helpService.getHelpList10());
		 
		  return "listHelp10";  
		 }  
	
	
	@Override
	public HelpBean getModel() {
		
		return helpBean;
	}
	public List<HelpBean> getHelps() {
		return helps;
	}

	public void setHelps(List<HelpBean> helps) {
		this.helps = helps;
	}
	public String help() {
		return "help";
	}
}
