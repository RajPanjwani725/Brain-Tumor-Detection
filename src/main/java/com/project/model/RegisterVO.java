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
@Table(name="register_table")
public class RegisterVO {
	
	
	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	
	@Column(name="name")
	private String name;
	
	@Column(name="phone_number")
	private String phoneNumber;
	
	@Column(name="about")
	private String about;
		
	@Column(name="address")
	private String address;
	
	
	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getAbout() {
		return about;
	}


	public void setAbout(String about) {
		this.about = about;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getPhoneNumber() {
		return phoneNumber;
	}


	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}


	
	public StateVO getStateVO() {
		return stateVO;
	}


	public void setStateVO(StateVO stateVO) {
		this.stateVO = stateVO;
	}




	public CityVO getCityVO() {
		return cityVO;
	}


	public void setCityVO(CityVO cityVO) {
		this.cityVO = cityVO;
	}


	public boolean isStatus() {
		return status;
	}


	public void setStatus(boolean status) {
		this.status = status;
	}


	public LoginVO getLoginVO() {
		return loginVO;
	}


	public void setLoginVO(LoginVO loginVO) {
		this.loginVO = loginVO;
	}

	@ManyToOne
	@JoinColumn(name="state_id")
	private StateVO stateVO;
	
	@ManyToOne
	@JoinColumn(name="city_id")
	private CityVO cityVO;
	
	
	@Column(name="status")
	private boolean status=true;
	
	
	
	@ManyToOne
	@JoinColumn(name="login_id")
	private LoginVO loginVO;


	
	
	
	
	

}
