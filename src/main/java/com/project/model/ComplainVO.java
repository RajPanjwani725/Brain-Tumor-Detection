package com.project.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="complain_table")
public class ComplainVO {
	
	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	@Column(name="complain_subject")
	private String complainSubject;
	
	@Column(name="complain_datetime")
	private String complainDateTime;
	
	@Column(name="reply_datetime")
	private String replyDateTime;
	

	@Column(name="complain_description")
	private String complainDescription;
	
	@Column(name="complain_status")
	private String complainStatus="Pending";
	
	
	@Column(name="status")
	private boolean status=true;
	
	
	public boolean isStatus() {
		return status;
	}


	public void setStatus(boolean status) {
		this.status = status;
	}


	@Column(name="complain_reply")
	private String complainReply;
	
	

	
	
	@ManyToOne
	@JoinColumn(name="login_id")
	private LoginVO loginVO;


	


	public String getReplyDateTime() {
		return replyDateTime;
	}


	public void setReplyDateTime(String replyDateTime) {
		this.replyDateTime = replyDateTime;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getComplainSubject() {
		return complainSubject;
	}


	public void setComplainSubject(String complainSubject) {
		this.complainSubject = complainSubject;
	}


	public String getComplainDateTime() {
		return complainDateTime;
	}


	public void setComplainDateTime(String complainDateTime) {
		this.complainDateTime = complainDateTime;
	}


	public String getComplainDescription() {
		return complainDescription;
	}


	public void setComplainDescription(String complainDescription) {
		this.complainDescription = complainDescription;
	}


	public String getComplainStatus() {
		return complainStatus;
	}


	public void setComplainStatus(String complainStatus) {
		this.complainStatus = complainStatus;
	}


	public String getComplainReply() {
		return complainReply;
	}


	public void setComplainReply(String complainReply) {
		this.complainReply = complainReply;
	}


	


	public LoginVO getLoginVO() {
		return loginVO;
	}


	public void setLoginVO(LoginVO loginVO) {
		this.loginVO = loginVO;
	}
	
	
}
