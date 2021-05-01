package com.project.dao;

import com.project.model.LoginVO;
import com.project.model.RegisterVO;

public interface RegisterDAO {

	void saveUserLogin(LoginVO loginVO);

	void saveUserRegister(RegisterVO registerVO);

}
