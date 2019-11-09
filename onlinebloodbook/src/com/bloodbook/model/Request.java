package com.bloodbook.model;

import java.io.Serializable;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="request_table")
public class Request implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name="req_id")
	@GeneratedValue(strategy=GenerationType.AUTO)//for Autonumber
	private int reqId;
	@Column(name="req_name")
	private String reqName;
	@Column(name="req_gender")
	private String reqGender;
	@Column(name="req_bloodgroup")
	private String reqBloodGroup;
	@Column(name="req_no_of_units")
	private Long reqNofoUnits;
	@Column(name="req_age")
	private Long reqAge;
	@Column(name="req_for_reason")
	private String reqReason;
	@Column(name="req_required_date")
	private String reqRequiredDate;
	@Column(name="req_mobile_no")
	private String reqMobileNo;
	@Column(name="req_land_no")
	private String reqLandNo;
	@Column(name="req_email")
	private String reqEmail;
	@Column(name="req_state")
	private String reqState;
	@Column(name="req_district")
	private String reqDistrict;
	@Column(name="req_city")
	private String reqCity;
	@Column(name="patient_address")
	private String patientAddress;
	@Column(name="hospital_name")
	private String hospitalName;
	@Column(name="hospital_address")
	private String hospitalAddress;
	
	public Request(){}
	public Request(int reqId, String reqName, String reqGender,
			String reqBloodGroup, Long reqNofoUnits, Long reqAge,
			String reqReason, String reqRequiredDate, String reqMobileNo,
			String reqLandNo, String reqEmail, String reqState,
			String reqDistrict, String reqCity, String patientAddress,
			String hospitalName, String hospitalAddress) {
		super();
		this.reqId = reqId;
		this.reqName = reqName;
		this.reqGender = reqGender;
		this.reqBloodGroup = reqBloodGroup;
		this.reqNofoUnits = reqNofoUnits;
		this.reqAge = reqAge;
		this.reqReason = reqReason;
		this.reqRequiredDate = reqRequiredDate;
		this.reqMobileNo = reqMobileNo;
		this.reqLandNo = reqLandNo;
		this.reqEmail = reqEmail;
		this.reqState = reqState;
		this.reqDistrict = reqDistrict;
		this.reqCity = reqCity;
		this.patientAddress = patientAddress;
		this.hospitalName = hospitalName;
		this.hospitalAddress = hospitalAddress;
	}
	public int getReqId() {
		return reqId;
	}
	public void setReqId(int reqId) {
		this.reqId = reqId;
	}
	public String getReqName() {
		return reqName;
	}
	public void setReqName(String reqName) {
		this.reqName = reqName;
	}
	public String getReqGender() {
		return reqGender;
	}
	public void setReqGender(String reqGender) {
		this.reqGender = reqGender;
	}
	public String getReqBloodGroup() {
		return reqBloodGroup;
	}
	public void setReqBloodGroup(String reqBloodGroup) {
		this.reqBloodGroup = reqBloodGroup;
	}
	public Long getReqNofoUnits() {
		return reqNofoUnits;
	}
	public void setReqNofoUnits(Long reqNofoUnits) {
		this.reqNofoUnits = reqNofoUnits;
	}
	public Long getReqAge() {
		return reqAge;
	}
	public void setReqAge(Long reqAge) {
		this.reqAge = reqAge;
	}
	public String getReqReason() {
		return reqReason;
	}
	public void setReqReason(String reqReason) {
		this.reqReason = reqReason;
	}
	
	public String getReqRequiredDate() {
		return reqRequiredDate;
	}
	public void setReqRequiredDate(String reqRequiredDate) {
		this.reqRequiredDate = reqRequiredDate;
	}
	public String getReqMobileNo() {
		return reqMobileNo;
	}
	public void setReqMobileNo(String reqMobileNo) {
		this.reqMobileNo = reqMobileNo;
	}
	public String getReqLandNo() {
		return reqLandNo;
	}
	public void setReqLandNo(String reqLandNo) {
		this.reqLandNo = reqLandNo;
	}
	public String getReqEmail() {
		return reqEmail;
	}
	public void setReqEmail(String reqEmail) {
		this.reqEmail = reqEmail;
	}
	public String getReqState() {
		return reqState;
	}
	public void setReqState(String reqState) {
		this.reqState = reqState;
	}
	public String getReqDistrict() {
		return reqDistrict;
	}
	public void setReqDistrict(String reqDistrict) {
		this.reqDistrict = reqDistrict;
	}
	public String getReqCity() {
		return reqCity;
	}
	public void setReqCity(String reqCity) {
		this.reqCity = reqCity;
	}
	public String getPatientAddress() {
		return patientAddress;
	}
	public void setPatientAddress(String patientAddress) {
		this.patientAddress = patientAddress;
	}
	public String getHospitalName() {
		return hospitalName;
	}
	public void setHospitalName(String hospitalName) {
		this.hospitalName = hospitalName;
	}
	public String getHospitalAddress() {
		return hospitalAddress;
	}
	public void setHospitalAddress(String hospitalAddress) {
		this.hospitalAddress = hospitalAddress;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	

	
	
}
