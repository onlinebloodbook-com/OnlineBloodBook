package com.bloodbook.model;



import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.Table;



@Entity
@Table(name="registration_table")
public class Register implements Serializable {
   /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
   @Id
   @Column(name="reg_id")
   @GeneratedValue(strategy=GenerationType.AUTO)//for Autonumber
   private Integer regId;
   @Column(name="reg_name")
	private String regName;
   @Column(name="reg_gender")
	private String regGender;
   @Column(name="reg_glood_group")
	private String regBloodGroup;
   @Column(name="reg_dob")
	private String regDOB;
   @Column(name="reg_age")
	private Long regAge;
   @Column(name="reg_weight")
	private Long regWeight;
   @Column(name="reg_blood_availability")
	private String regBloodAvailability;
   @Column(name="reg_mobile_no")
	private String regMobileNo;
   @Column(name="reg_land_no")
	private String regLandNo;
   @Column(name="reg_email")
	private String regEmail;
   @Column(name="reg_state")
	private String regState;
   @Column(name="reg_district")
	private String regDistrict;
   @Column(name="reg_city")
	private String regCity;
   @Column(name="reg_address")
	private String regAddress;
   @Column(name="user_id")
	private String userId;
   @Column(name="user_password")
	private String userPassword;
	
    public Register(){}
	public Register(Integer regId, String regName, String regGender,
		String regBloodGroup, String regDOB, Long regAge, Long regWeight,
		String regBloodAvailability, String regMobileNo, String regLandNo,
		String regEmail, String regState, String regDistrict, String regCity,
		String regAddress, String userId, String userPassword) {
	super();
	this.regId = regId;
	this.regName = regName;
	this.regGender = regGender;
	this.regBloodGroup = regBloodGroup;
	this.regDOB = regDOB;
	this.regAge = regAge;
	this.regWeight = regWeight;
	this.regBloodAvailability = regBloodAvailability;
	this.regMobileNo = regMobileNo;
	this.regLandNo = regLandNo;
	this.regEmail = regEmail;
	this.regState = regState;
	this.regDistrict = regDistrict;
	this.regCity = regCity;
	this.regAddress = regAddress;
	this.userId = userId;
	this.userPassword = userPassword;
}
	public Integer getRegId() {
		return regId;
	}
	public void setRegId(Integer regId) {
		this.regId = regId;
	}
	
	public String getRegName() {
		return regName;
	}
	
	public void setRegName(String regName) {
		this.regName = regName;
	}
	public String getRegGender() {
		return regGender;
	}
	public void setRegGender(String regGender) {
		this.regGender = regGender;
	}
	public String getRegBloodGroup() {
		return regBloodGroup;
	}
	public void setRegBloodGroup(String regBloodGroup) {
		this.regBloodGroup = regBloodGroup;
	}
	public String getRegDOB() {
		return regDOB;
	}
	public void setRegDOB(String regDOB) {
		this.regDOB = regDOB;
	}
	public Long getRegAge() {
		return regAge;
	}
	public void setRegAge(Long regAge) {
		this.regAge = regAge;
	}
	public Long getRegWeight() {
		return regWeight;
	}
	public void setRegWeight(Long regWeight) {
		this.regWeight = regWeight;
	}
	public String getRegBloodAvailability() {
		return regBloodAvailability;
	}
	public void setRegBloodAvailability(String regBloodAvailability) {
		this.regBloodAvailability = regBloodAvailability;
	}
	public String getRegMobileNo() {
		return regMobileNo;
	}
	public void setRegMobileNo(String regMobileNo) {
		this.regMobileNo = regMobileNo;
	}
	public String getRegLandNo() {
		return regLandNo;
	}
	public void setRegLandNo(String regLandNo) {
		this.regLandNo = regLandNo;
	}
	public String getRegEmail() {
		return regEmail;
	}
	
	public void setRegEmail(String regEmail) {
		this.regEmail = regEmail;
	}
	public String getRegState() {
		return regState;
	}
	public void setRegState(String regState) {
		this.regState = regState;
	}
	public String getRegDistrict() {
		return regDistrict;
	}
	public void setRegDistrict(String regDistrict) {
		this.regDistrict = regDistrict;
	}
	public String getRegCity() {
		return regCity;
	}
	public void setRegCity(String regCity) {
		this.regCity = regCity;
	}
	public String getRegAddress() {
		return regAddress;
	}
	public void setRegAddress(String regAddress) {
		this.regAddress = regAddress;
	}
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	
}
