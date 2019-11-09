package com.bloodbook.dao;

import java.util.List;

import com.bloodbook.model.Register;

public interface RegisterDao {
	public void saveRegistration(Register register) throws Exception;
	public void updateRegistration(Register register);
	public Register getRegister(Integer regId);
	public List<Register> getRegisterList();
	public List<Register> getRegisterList1();
	public List<Register> searchList(String regBloodAvailability, String regBloodGroup,String regState,String regDistrict,String regCity);
	public List<Register> getLogin(String userId ,String userPassword);
	/*public Register getRegPhotoFile(Integer regId);*/
	/*public byte[] loadImage(Integer regId);*/

}
