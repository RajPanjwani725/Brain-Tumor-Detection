package com.project.model;

import java.io.File;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="dataset_table")
public class DatasetVO {
	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	@Column(name="dataset_name")
	private String datasetName;
	
	@Column(name="dataset_description")
	private String datasetDescription;
	
	@Column(name="dataset_fileName")
	private String datasetFileName;
	
	@Column(name="dataset_filePath")
	private String datasetFilePath;
	

	@Column(name="detection_outputfileName")
	private String detectionOutputFilePath;
	
	@Column(name="detection_status")
	private String detectionStatus;
	
	@Column(name="detection_datetime")
	private String detectionDatetime;
	
	@Column(name="detection_report_path")
	private String detectionReport;
	
	@Column(name="detection_report_status")
	private String detectionReportStatus="notGenerated";
	
	
	
	

	public String getDetectionReportStatus() {
		return detectionReportStatus;
	}

	public void setDetectionReportStatus(String detectionReportStatus) {
		this.detectionReportStatus = detectionReportStatus;
	}

	public String getDetectionReport() {
		return detectionReport;
	}

	public void setDetectionReport(String detectionReport) {
		this.detectionReport = detectionReport;
	}

	public String getDetectionOutputFilePath() {
		return detectionOutputFilePath;
	}

	public void setDetectionOutputFilePath(String detectionOutputFilePath) {
		this.detectionOutputFilePath = detectionOutputFilePath;
	}

	public String getDetectionStatus() {
		return detectionStatus;
	}

	public void setDetectionStatus(String detectionStatus) {
		this.detectionStatus = detectionStatus;
	}

	public String getDetectionDatetime() {
		return detectionDatetime;
	}

	public void setDetectionDatetime(String detectionDatetime) {
		this.detectionDatetime = detectionDatetime;
	}

	@ManyToOne
	@JoinColumn(name="login_id")
	private LoginVO loginVO;
	
	
	
	public LoginVO getLoginVO() {
		return loginVO;
	}

	public void setLoginVO(LoginVO loginVO) {
		this.loginVO = loginVO;
	}

	@Column(name="status")
	private boolean status=true;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDatasetName() {
		return datasetName;
	}

	public void setDatasetName(String datasetName) {
		this.datasetName = datasetName;
	}

	public String getDatasetDescription() {
		return datasetDescription;
	}

	public void setDatasetDescription(String datasetDescription) {
		this.datasetDescription = datasetDescription;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public String getDatasetFileName() {
		return datasetFileName;
	}

	public void setDatasetFileName(String datasetFileName) {
		this.datasetFileName = datasetFileName;
	}

	public String getDatasetFilePath() {
		return datasetFilePath;
	}

	public void setDatasetFilePath(String datasetFilePath) {
		this.datasetFilePath = datasetFilePath;
	}


}
