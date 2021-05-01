package com.project.dao;

import java.util.List;

import com.project.model.ComplainVO;
import com.project.model.LoginVO;

public interface ComplainDAO {

	void saveComplainReply(ComplainVO complainVO);

	void saveComplain(ComplainVO complainVO);



	List<LoginVO> getLoginByUsername(LoginVO loginVO);

	List<ComplainVO> getComplain();

	List<ComplainVO> getUserComplain(ComplainVO complainVO);

	List<ComplainVO> getComplainById(ComplainVO complainVO);

}
