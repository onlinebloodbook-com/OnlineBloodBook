package com.bloodbook.service;

import java.util.List;

import com.bloodbook.model.Register;

public interface LoginService {

	/*public int LoginRegistration(String userId, String userPassword);*/
	
	public boolean checkLogin(String userId, String userPassword);
}
