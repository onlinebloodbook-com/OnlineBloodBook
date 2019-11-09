package com.bloodbook.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bloodbook.dao.RequestDao;
import com.bloodbook.model.Request;

@Service
public class RequestServiceImpl implements RequestService{
	
	@Autowired
	private RequestDao requestDao;

	@Transactional
	public void saveRequest(Request request) {
		requestDao.saveRequest(request);
	}

	@Transactional
	public void updateRequest(Request request) {
		requestDao.updateRequest(request);
		
	}

	@Transactional
	public void deleteRequest(int reqId) {
		requestDao.deleteRequest(reqId);

	}

	@Transactional
	public Request getRequest(Integer reqId) {
		return requestDao.getRequest(reqId);
	}


	@Transactional
	public List<Request> getRequestList() {
		return requestDao.getRequestList();
		
	}
	@Transactional
	public List<Request> getRequestList10() {
		return requestDao.getRequestList10();
		
	}
	@Transactional
	public List<Request> getRequestList1() {
		return requestDao.getRequestList1();
		
	}
}
