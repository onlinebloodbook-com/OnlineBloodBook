package com.bloodbook.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.bloodbook.dao.RegisterDao;
import com.bloodbook.model.Register;
 
@Service
public class RegisterServiceImpl implements RegisterService {
	
	@Autowired
	private RegisterDao registerDao;

	@Transactional
	public void saveRegistration(Register register) throws Exception{
		 try {
			registerDao.saveRegistration(register);
		} catch (Exception e) {
			
			throw new Exception("Error from Service: " + e.getMessage());
		}
	}
	@Transactional
	public void updateRegistration(Register register) {
		 System.out.println("This is Service updateRegistration Methode Before");
		 registerDao.updateRegistration(register);
		 System.out.println("This is Service updateRegistration Methode After");
		
	}
	/*@Transactional
	public void deleteRegistration(Register register) {
		 System.out.println("This is Service deleteRegistration Methode");
		registerDao.deleteRegistration(register);

	}*/
	@Transactional
	public Register getRegister(Integer regId) {
		 System.out.println("This is Service getRegistration Methode");
		return registerDao.getRegister(regId);
	}

	@Transactional
	public List<Register> getRegisterList() {
		 System.out.println("This is Service getRegistrList Methode");
		return registerDao.getRegisterList();
		
	}
	
	@Transactional
	public List<Register> getRegisterList1() {
		 System.out.println("This is Service getRegistrList1 Methode");
		return registerDao.getRegisterList1();
		
	}
	@Override
	@Transactional 
	public List<Register> searchList(String regBloodAvailability, String regBloodGroup, String regState,
			String regDistrict, String regCity) {
		return registerDao.searchList(regBloodAvailability, regBloodGroup, regState, regDistrict, regCity);
	}
	@Override
	@Transactional 
	public List<Register> getLogin(String userId, String userPassword) {
		return registerDao.getLogin(userId, userPassword);
	}
	/*@Override
	@Transactional 
	public Register getRegPhotoFile(Integer regId) {
		return registerDao.getRegPhotoFile(regId);
	}
	@Override
	public byte[] loadImage(Integer regId) {
		
		return registerDao.loadImage(regId);
	}*/
	
	
}
