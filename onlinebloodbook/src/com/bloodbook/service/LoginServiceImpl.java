package com.bloodbook.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.bloodbook.dao.LoginDao;
import com.bloodbook.model.Register;


@Repository("LoginService")
public class LoginServiceImpl implements LoginService {

	@Autowired
	private LoginDao loginDao;
	
	/*@Transactional
	public int LoginRegistration(String userId, String userPassword) {
		System.out.println("Login Service");
		return loginDao.LoginRegistration(userId, userPassword);
	}
*/
	@Override
	public boolean checkLogin(String userId, String userPassword) {
		
             System.out.println("In Service class...Check Login");
             return loginDao.checkLogin(userId, userPassword) != null;
     
		
	}
}
