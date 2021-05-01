package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.StateDAO;
import com.project.model.StateVO;

@Service
@Transactional
public class StateServiceImpl implements StateService {

	@Autowired
	private StateDAO stateDAO;

	@Override
	public void saveState(StateVO stateVO) {
		this.stateDAO.saveState(stateVO);
	}

	@Override
	public List<StateVO> getState() {
		List<StateVO> stateList=this.stateDAO.getState();
		return stateList;
	}

	@Override
	public List<StateVO> getStateById(StateVO stateVO) {
		List<StateVO> stateList=this.stateDAO.getStateById(stateVO);
		return stateList;
	}

}
