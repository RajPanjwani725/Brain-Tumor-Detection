package com.project.service;


import java.util.List;

import com.project.model.RegisterVO;

public interface UserService {

	List<RegisterVO> getUser(RegisterVO registerVO);

	List<RegisterVO> getUserById(RegisterVO registerVO);

	List<RegisterVO> getUserByIdProfile(RegisterVO registerVO);

}
