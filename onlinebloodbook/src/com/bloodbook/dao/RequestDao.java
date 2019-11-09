package com.bloodbook.dao;

import java.util.List;


import com.bloodbook.model.Request;

public interface RequestDao {
	public void saveRequest(Request request);
	public void updateRequest(Request request);
	public void deleteRequest(int reqId);
	public Request getRequest(Integer reqId);
	public List<Request> getRequestList();
	public List<Request> getRequestList10();
	public List<Request> getRequestList1();
	
}
