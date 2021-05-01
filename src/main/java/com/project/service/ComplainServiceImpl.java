package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.ComplainDAO;
import com.project.model.ComplainVO;
import com.project.model.LoginVO;

@Service
@Transactional
public class ComplainServiceImpl implements ComplainService {

	@Autowired
	private ComplainDAO complainDAO;
	
	@Override
	public void saveComplainReply(ComplainVO complainVO){
		this.complainDAO.saveComplainReply(complainVO);
	}

	@Override
	public void saveComplain(ComplainVO complainVO) {
		this.complainDAO.saveComplain(complainVO);
		
	}

	@Override
	public List<LoginVO> getLoginByUsername(LoginVO loginVO) {
		List<LoginVO> loginList=this.complainDAO.getLoginByUsername(loginVO);
		return loginList;
	}

	@Override
	public List<ComplainVO> getComplain() {
		
		return this.complainDAO.getComplain();
	}

	@Override
	public List<ComplainVO> getUserComplain(ComplainVO complainVO) {
		List<ComplainVO> complainList=this.complainDAO.getUserComplain(complainVO);
		return complainList;
	}

	@Override
	public List<ComplainVO> getComplainById(ComplainVO complainVO) {
		List<ComplainVO> complainList= this.complainDAO.getComplainById(complainVO);
		return complainList;
	}
}
