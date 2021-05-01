package com.project.service;

import com.project.model.LoginVO;
import com.project.model.RegisterVO;

public interface RegisterService {

	void saveUserLogin(LoginVO loginVO);

	void saveUserRegister(RegisterVO registerVO);

}
