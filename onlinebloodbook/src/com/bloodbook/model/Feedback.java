package com.bloodbook.model;




import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="feedback_table")
public class Feedback {
	
	  @Id
      @Column(name="fb_id")
	  @GeneratedValue(strategy=GenerationType.AUTO)//for Autonumber
	  private int fbId;
	  @Column(name="fb_name")
	  private String fbName;
	  @Column(name="fb_contact_no")
	  private String fbContactNo;
	  @Column(name="fb_email")
	  private String fbEmail;
	  @Column(name="fb_comment")
	  private String fbComment;
	  @Column(name="fb_date_time")
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
