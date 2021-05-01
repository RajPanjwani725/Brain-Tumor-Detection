package com.project.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.RegisterDAO;
import com.project.model.LoginVO;
import com.project.model.RegisterVO;


@Service
@Transactional
public class RegisterServiceImpl implements RegisterService{

	@Autowired
	private RegisterDAO registerDAO;
	
	
	
	public void saveUserLogin(LoginVO loginVO) {
		this.registerDAO.saveUserLogin(loginVO);
		
	}

	@Override
	public void saveUserRegister(RegisterVO registerVO) {
		this.registerDAO.saveUserRegister(registerVO);
		
	}

}
