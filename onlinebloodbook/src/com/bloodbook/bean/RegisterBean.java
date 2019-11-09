package com.bloodbook.bean;


public class RegisterBean{
	
	
	private Integer regId;
	private String regName;
	private String regGender;
	private String regBloodGroup;
	private String regDOB;
	private Long regAge;
	private Long regWeight;
	private String regBloodAvailability;
	private String regMobileNo;
	private String regLandNo;
	private String regEmail;
	private String regState;
	private String regDistrict;
	private String regCity;
	private String regAddress;
	/*private File regPhotoFile;*/
	private String userId;
	private String userPassword;
	
    public RegisterBean() {
		
	    }
	public RegisterBean(Integer regId, String regName, String regGender, String regBloodGroup, String regDOB, Long regWeight, Long regAge, String regBloodAvailability, String regMobileNo, String regEmail, String regLandNo, String regState, String regDistrict, String regCity, String regAddress, String userId, String userPassword) {
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
		/*this.regPhotoFile = regPhotoFile;*/
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
	/*public File getRegPhotoFile() {
		return regPhotoFile;
	}

	public void setRegPhotoFile(File regPhotoFile) {
		this.regPhotoFile = regPhotoFile;
	}*/
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
	
		
}
