package com.bloodbook.util;

import java.util.ArrayList;
import java.util.List;

import com.bloodbook.bean.RequestBean;
import com.bloodbook.model.Request;

public class RequestUtility {
	public static Request createModel(RequestBean requestBean){
     Request request=new Request();
     request.setReqId(requestBean.getReqId());
     request.setReqName(requestBean.getReqName());
     request.setReqGender(requestBean.getReqGender());
     request.setReqBloodGroup(requestBean.getReqBloodGroup());
     request.setReqNofoUnits(requestBean.getReqNofoUnits());
     request.setReqAge(requestBean.getReqAge());
     request.setReqReason(requestBean.getReqReason());
     request.setReqRequiredDate(requestBean.getReqRequiredDate());
     request.setReqMobileNo(requestBean.getReqMobileNo());
     request.setReqLandNo(requestBean.getReqLandNo());
     request.setReqEmail(requestBean.getReqEmail());
     request.setReqState(requestBean.getReqState());
     request.setReqDistrict(requestBean.getReqDistrict());
     request.setReqCity(requestBean.getReqCity());
     request.setPatientAddress(requestBean.getPatientAddress());
     request.setHospitalName(requestBean.getHospitalName());
     request.setHospitalAddress(requestBean.getHospitalAddress());
     
         return request;
}
	public static List<RequestBean> createRequestBeansList(List<Request> requests){
		List<RequestBean> beans=new ArrayList<RequestBean>();
		RequestBean requestBean=null;
		for(Request request: requests){
	    requestBean=new RequestBean();
	    requestBean.setReqId(request.getReqId());
	    requestBean.setReqName(request.getReqName());
	    requestBean.setReqGender(request.getReqGender());
	    requestBean.setReqBloodGroup(request.getReqBloodGroup());
	    requestBean.setReqNofoUnits(request.getReqNofoUnits());
	    requestBean.setReqAge(request.getReqAge());
	    requestBean.setReqReason(request.getReqReason());
	    requestBean.setReqRequiredDate(request.getReqRequiredDate());
	    requestBean.setReqMobileNo(request.getReqMobileNo());
	    requestBean.setReqLandNo(request.getReqLandNo());
	    requestBean.setReqEmail(request.getReqEmail());
	    requestBean.setReqState(request.getReqState());
	    requestBean.setReqDistrict(request.getReqDistrict());
	    requestBean.setReqCity(request.getReqCity());
	    requestBean.setPatientAddress(request.getPatientAddress());
	    requestBean.setHospitalName(request.getHospitalName());
	    requestBean.setHospitalAddress(request.getHospitalAddress());
	    
         beans.add(requestBean);
				
		}
		
		return beans;
	}
	public static RequestBean prepareRequestBean(Request request){
		System.out.println("This is commonUtility1 prepareRequestBean Methode Before request Object");
		
		RequestBean bean=new RequestBean();
		bean.setReqId(request.getReqId());
		bean.setReqName(request.getReqName());
		bean.setReqBloodGroup(request.getReqBloodGroup());
		bean.setReqGender(request.getReqGender());
		bean.setReqEmail(request.getReqEmail());
		bean.setReqAge(request.getReqAge());
		bean.setReqNofoUnits(request.getReqNofoUnits());
		bean.setReqRequiredDate(request.getReqReason());
		bean.setReqRequiredDate(request.getReqRequiredDate());
		bean.setReqMobileNo(request.getReqMobileNo());
		bean.setReqLandNo(request.getReqLandNo());
		bean.setReqState(request.getReqState());
		bean.setReqDistrict(request.getReqDistrict());
		bean.setReqCity(request.getReqCity());
		bean.setHospitalName(request.getHospitalName());
		bean.setHospitalAddress(request.getHospitalAddress());
		bean.setPatientAddress(request.getPatientAddress());
		
		return bean;
	}

}
