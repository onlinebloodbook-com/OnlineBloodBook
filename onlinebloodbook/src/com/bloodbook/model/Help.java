package com.bloodbook.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="help_table")
public class Help {

	  @Id
      @Column(name="hp_id")
	  @GeneratedValue(strategy=GenerationType.AUTO)//for Autonumber
	  private int hpId;
	  @Column(name="hp_name")
	  private String hpName;
	  @Column(name="hp_contact_no")
	  private String hpContactNo;
	  @Column(name="hp_email")
	  private String hpEmail;
	  @Column(name="hp_address")
	  private String hpAddress;
	  @Column(name="hp_problem")
	  private String hpProblem;
	  @Column(name="hp_date_time")
	  private Date hpDate;
	  
	  
	public int getHpId() {
		return hpId;
	}
	public void setHpId(int hpId) {
		this.hpId = hpId;
	}
	public String getHpName() {
		return hpName;
	}
	public void setHpName(String hpName) {
		this.hpName = hpName;
	}
	public String getHpContactNo() {
		return hpContactNo;
	}
	public void setHpContactNo(String hpContactNo) {
		this.hpContactNo = hpContactNo;
	}
	public String getHpEmail() {
		return hpEmail;
	}
	public void setHpEmail(String hpEmail) {
		this.hpEmail = hpEmail;
	}
	public String getHpAddress() {
		return hpAddress;
	}
	public void setHpAddress(String hpAddress) {
		this.hpAddress = hpAddress;
	}
	public String getHpProblem() {
		return hpProblem;
	}
	public void setHpProblem(String hpProblem) {
		this.hpProblem = hpProblem;
	}
	public Date getHpDate() {
		return hpDate;
	}
	public void setHpDate(Date hpDate) {
		this.hpDate = hpDate;
	}

	  
	  
	
}
