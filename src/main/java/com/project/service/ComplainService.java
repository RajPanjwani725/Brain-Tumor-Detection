package com.project.service;

import java.util.List;

import com.project.model.ComplainVO;
import com.project.model.LoginVO;

public interface ComplainService {

	void saveComplainReply(ComplainVO complainVO);

	void saveComplain(ComplainVO complainVO);

	List<LoginVO> getLoginByUsername(LoginVO loginVO);

	List<ComplainVO> getComplain();

	List<ComplainVO> getUserComplain(ComplainVO complainVO);

	List<ComplainVO> getComplainById(ComplainVO complainVO);

}
