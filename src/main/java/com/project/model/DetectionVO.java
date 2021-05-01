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
@Table(name="detection_table")
public class DetectionVO {
	
	@Id
	@Column(name="detection_id")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int detectionId;
	
	@Column(name="detection_input_filepath")
	private String detectionInputFilepath;
	
	@Column(name = "detection_input_filename")
	private String detectionInputFilename;
	
	@Column(name = "detection_status")
	private String detectionStatus;
	
	@Column(name = "detection_datetime")
	private String detectionDateTime;
	
	@Column(name="detection_output_filepath")
	private String detectionOutputFilepath;
	
	@Column(name = "detection_output_filename")
	private String detectionOutputFilename;
	
	@Column(name = "detection_probability")
	private String detectionProbability;
	
	@ManyToOne
	@JoinColumn(name="detction_login_id")
	private LoginVO loginVO;

	public int getDetectionId() {
		return detectionId;
	}

	public void setDetectionId(int detectionId) {
		this.detectionId = detectionId;
	}

	public String getDetectionInputFilepath() {
		return detectionInputFilepath;
	}

	public void setDetectionInputFilepath(String detectionInputFilepath) {
		this.detectionInputFilepath = detectionInputFilepath;
	}

	public String getDetectionInputFilename() {
		return detectionInputFilename;
	}

	public void setDetectionInputFilename(String detectionInputFilename) {
		this.detectionInputFilename = detectionInputFilename;
	}

	public String getDetectionStatus() {
		return detectionStatus;
	}

	public void setDetectionStatus(String detectionStatus) {
		this.detectionStatus = detectionStatus;
	}

	public String getDetectionDateTime() {
		return detectionDateTime;
	}

	public void setDetectionDateTime(String detectionDateTime) {
		this.detectionDateTime = detectionDateTime;
	}

	public String getDetectionOutputFilepath() {
		return detectionOutputFilepath;
	}

	public void setDetectionOutputFilepath(String detectionOutputFilepath) {
		this.detectionOutputFilepath = detectionOutputFilepath;
	}

	public String getDetectionOutputFilename() {
		return detectionOutputFilename;
	}

	public void setDetectionOutputFilename(String detectionOutputFilename) {
		this.detectionOutputFilename = detectionOutputFilename;
	}

	public LoginVO getLoginVO() {
		return loginVO;
	}

	public void setLoginVO(LoginVO loginVO) {
		this.loginVO = loginVO;
	}
	

		
	
}
