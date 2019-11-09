package com.bloodbook.util;


import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.bloodbook.bean.RegisterBean;
import com.bloodbook.model.Register;


public class RegisterUtility {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public static Register createModel(RegisterBean registerBean) throws Exception{
		System.out.println("This is commonUtility createModel Methode Before register Object");
		Register register=new Register();
		 try {
		register.setRegId(registerBean.getRegId());
		register.setRegName(registerBean.getRegName());
		register.setRegGender(registerBean.getRegGender());
		register.setRegBloodGroup(registerBean.getRegBloodGroup());
		register.setRegDOB(registerBean.getRegDOB());
		register.setRegAge(registerBean.getRegAge());
		register.setRegWeight(registerBean.getRegWeight());
		register.setRegBloodAvailability(registerBean.getRegBloodAvailability());
	    register.setRegMobileNo(registerBean.getRegMobileNo());
	    register.setRegLandNo(registerBean.getRegLandNo());
	    register.setRegEmail(registerBean.getRegEmail());
	    register.setRegState(registerBean.getRegState());
	    register.setRegDistrict(registerBean.getRegDistrict());
	    register.setRegCity(registerBean.getRegCity());
	    register.setRegAddress(registerBean.getRegAddress());
	
	   
	/*  byte[]  bfile = new byte[(int) registerBean.getRegPhotoFile().length()];
	    try {
		       FileInputStream fileInputStream = new FileInputStream(registerBean.getRegPhotoFile());
		       //convert file into array of bytes
		       fileInputStream.read(bfile);
		       fileInputStream.close();
		       
		       for (int i = 0; i < bfile.length; i++) {
			       	System.out.print((char)bfile[i]);
		            }
		 
		         } catch (Exception e) {
		           throw new Exception("Error from Photo: " + e.getMessage());
		         }
	   register.setRegPhotoFile(bfile);*/
	   
	    register.setUserId(registerBean.getUserId());
	    register.setUserPassword(registerBean.getUserPassword());
		 } catch (Exception e) {
				throw new Exception("Error from Register Utility class: " + e.getMessage());
			}
		return register;
	}

	public static List<RegisterBean> createRegisterBeanList(List<Register> registers) throws Exception{
		
		System.out.println("This is commonUtility createRegisterBeanList Methode Before register Object");
		
		List<RegisterBean> beans=new ArrayList<RegisterBean>();
		System.out.println("This is commonUtility beans");
		
		RegisterBean registerBean=null;
		
		
		for(Register register: registers){
			
			registerBean=new RegisterBean();
			
			registerBean.setRegId(register.getRegId());
			registerBean.setRegName(register.getRegName());
			registerBean.setRegGender(register.getRegGender());
			registerBean.setRegBloodGroup(register.getRegBloodGroup());
			registerBean.setRegDOB(register.getRegDOB());
			registerBean.setRegAge(register.getRegAge());
			registerBean.setRegWeight(register.getRegWeight());
			registerBean.setRegBloodAvailability(register.getRegBloodAvailability());
			registerBean.setRegMobileNo(register.getRegMobileNo());
			registerBean.setRegLandNo(register.getRegLandNo());
			registerBean.setRegEmail(register.getRegEmail());
			registerBean.setRegState(register.getRegState());
			registerBean.setRegDistrict(register.getRegDistrict());
			registerBean.setRegCity(register.getRegCity());
			registerBean.setRegAddress(register.getRegAddress());
			
		/*	
			byte[]  bfile = new byte[(int) registerBean.getRegPhotoFile().length()];
		    try {
			       FileInputStream fileInputStream = new FileInputStream(registerBean.getRegPhotoFile());
			       //convert file into array of bytes
			       fileInputStream.read(bfile);
			       fileInputStream.close();
			       
			     //convert array of bytes into file
				    FileOutputStream fileOuputStream = 
			                  new FileOutputStream("C:\\testing2.txt"); 
				    fileOuputStream.write(bfile);
				    fileOuputStream.close();
			 
			       
			       for (int i = 0; i < bfile.length; i++) {
				       	System.out.print((char)bfile[i]);
			            }
			 
			         } catch (Exception e) {
			           throw new Exception("Error from Photo: " + e.getMessage());
			         }*/
		
		/*
			File file = new File(register.getRegPhotoFile().toString());
            try {
                 FileOutputStream fos = new FileOutputStream(register.getRegPhotoFile().toString());
                 
                 String strContent = "Write File using Java ";

                 fos.write(strContent.getBytes());
                 fos.close();
            } catch (Exception e) {
 		       e.printStackTrace();
 		         }
	        registerBean.setRegPhotoFile(file);
	        */
	 
			//convert array of bytes into file
			/*try {
		    FileOutputStream fileOuputStream = 
	                  new FileOutputStream(register.getRegPhotoFile().toString()); 
		    byte[] bFile = null;
			fileOuputStream.write(bFile);
		    fileOuputStream.close();
		      } catch (Exception e) {
		       e.printStackTrace(); 
		         }
			File bFile = null;
			registerBean.setRegPhotoFile(bFile);
			*/
	        
			registerBean.setUserId(register.getUserId());
			registerBean.setUserPassword(register.getUserPassword());
			
			beans.add(registerBean);
		}
		System.out.println("This is commonUtility createRegisterBeanList Methode Before return beans Object");
		return beans;
		
	}
	
	
	public static RegisterBean prepareRegisterBean (Register register){
		System.out.println("This is commonUtility prepareRegisterBean Methode Before register Object");
		
		RegisterBean bean=new  RegisterBean();
         bean.setRegId(register.getRegId());
         bean.setRegName(register.getRegName());
         bean.setRegGender(register.getRegGender());
         bean.setRegBloodGroup(register.getRegBloodGroup());
         bean.setRegBloodAvailability(register.getRegBloodAvailability());
         bean.setRegAge(register.getRegAge());
         bean.setRegDOB(register.getRegDOB());
         bean.setRegEmail(register.getRegEmail());
         bean.setRegMobileNo(register.getRegMobileNo());
         bean.setRegLandNo(register.getRegLandNo());
         bean.setRegWeight(register.getRegWeight());
         bean.setRegState(register.getRegState());
         bean.setRegDistrict(register.getRegDistrict());
         bean.setRegCity(register.getRegCity());
         bean.setRegAddress(register.getRegAddress());
         //bean.setRegPhotoFile(register.getRegPhotoFile());
         
		 System.out.println("This is commonUtility prepareRegisterBean Methode After register Object");
		return bean;
		
	}
}
