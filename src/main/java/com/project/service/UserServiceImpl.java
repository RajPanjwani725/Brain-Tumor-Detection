package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.UserDAO;
import com.project.model.RegisterVO;

@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO;
	
	@Override
	public List<RegisterVO> getUser(RegisterVO registerVO) {
		List<RegisterVO> userList=this.userDAO.getUser(registerVO);
		return userList;
	}

	@Override
	public List<RegisterVO> getUserById(RegisterVO registerVO) {
		List<RegisterVO> userList=this.userDAO.getUserById(registerVO);
		return userList;
	}

	@Override
	public List<RegisterVO> getUserByIdProfile(RegisterVO registerVO) {
		List<RegisterVO> userList=this.userDAO.getUserByIdProfile(registerVO);
		return userList;
	}

}
