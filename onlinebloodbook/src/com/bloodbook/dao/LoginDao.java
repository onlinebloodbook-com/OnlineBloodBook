package com.bloodbook.dao;

import java.util.List;

import com.bloodbook.model.Register;

public interface LoginDao {
	
	/*public int LoginRegistration(String userId, String userPassword);*/
	
	public List<Register> checkLogin(String userId, String userPassword);
}
