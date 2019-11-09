package com.bloodbook.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bloodbook.model.Register;


@Repository("registerDao")
public class RegisterDaoImpl implements RegisterDao {
	
	@Autowired
	private SessionFactory sessionFactory;


	@Override
	public void saveRegistration(Register register) throws Exception{
		try{
		sessionFactory.getCurrentSession().save(register);	
		}catch(Exception e){
			throw new Exception("Error from DAO: " + e.getMessage());
		}
	}
	@Override
	public void updateRegistration(Register register) {
		sessionFactory.getCurrentSession().update(register);
	}
	
	/*@Override
	public void deleteRegistration(Register register) {
		System.out.println("This is Dao deleteRegistration Methode");
		sessionFactory.getCurrentSession().createQuery("select FROM Register WHERE reg_id = "+register.getRegId()).list();
	}*/
	
	@Override
	public Register getRegister(Integer regId) {
		System.out.println("This is Dao getRegistration Methode");
		return (Register) sessionFactory.getCurrentSession().get(Register.class, regId);
		
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Register> getRegisterList() {	
		System.out.println("This is Dao getRegistrList Methode");
		return sessionFactory.getCurrentSession().createQuery("from Register ORDER BY reg_id  DESC").list();
		}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Register> getRegisterList1() {	
		System.out.println("This is Dao getRegistrList1 Methode");
		return sessionFactory.getCurrentSession().createQuery("from Register ORDER BY reg_id  DESC").setMaxResults(1).list();
		}
	@SuppressWarnings("unchecked")
	@Override
	public List<Register> searchList(String regBloodAvailability,String regBloodGroup, String regState,
			String regDistrict, String regCity) {
		return sessionFactory.getCurrentSession().createQuery("from Register where regBloodAvailability='" +regBloodAvailability + "' and regBloodGroup='" + regBloodGroup + "' and regState='" + regState + "' and regDistrict='" + regDistrict + "' and regCity='" + regCity + "' ").list();
		/*return sessionFactory.getCurrentSession().createQuery("from Register where regBloodGroup='" + regBloodGroup + "' and regState='" + regState + "' and regDistrict='" + regDistrict + "' or regCity='" + regCity + "' ").list();*/
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Register> getLogin(String userId, String userPassword) {
		return sessionFactory.getCurrentSession().createQuery("from Register where userId='" + userId + "' and userPassword='" + userPassword + "'").list();
		
	}
	/*@Override
	public Register getRegPhotoFile(Integer regId) {
		org.hibernate.classic.Session session = sessionFactory.getCurrentSession();
		return (Register) session.get(Register.class, regId);
	}
	public byte[] loadImage(Integer regId) {
		
		return ((Register) sessionFactory.getCurrentSession().get(Register.class,regId)).getRegPhotoFile();
	}*/
	
	
	
}
