package com.bloodbook.bean;

import java.util.Date;




public class FeedbackBean {
	
	
  private int fbId;
  private String fbName;
  private String fbContactNo;
  private String fbEmail;
  private String fbComment;
  private Date fbDate;
  
  
  
  public int getFbId() {
	return fbId;
  }
  public void setFbId(int fbId) {
	this.fbId = fbId;
  }
  public String getFbName() {
	return fbName;
  }
  public void setFbName(String fbName) {
	this.fbName = fbName;
  }
  public String getFbContactNo() {
	return fbContactNo;
  }
  public void setFbContactNo(String fbContactNo) {
	this.fbContactNo = fbContactNo;
  }
  public String getFbEmail() {
	return fbEmail;
  }
  public void setFbEmail(String fbEmail) {
	this.fbEmail = fbEmail;
  }
  public String getFbComment() {
	return fbComment;
  }
  public void setFbComment(String fbComment) {
	this.fbComment = fbComment;
  }
  public Date getFbDate() {
	return fbDate;
  }
  public void setFbDate(Date fbDate) {
	this.fbDate = fbDate;
  }

  
}
