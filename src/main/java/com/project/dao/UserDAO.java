package com.project.dao;

import java.util.List;

import com.project.model.RegisterVO;

public interface UserDAO {

	List<RegisterVO> getUser(RegisterVO registerVO);

	List<RegisterVO> getUserById(RegisterVO registerVO);

	List<RegisterVO> getUserByIdProfile(RegisterVO registerVO);

}
