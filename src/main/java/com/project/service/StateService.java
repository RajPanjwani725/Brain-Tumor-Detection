package com.project.service;

import java.util.List;

import com.project.model.StateVO;

public interface StateService {

	public void saveState(StateVO stateVO);

	public List<StateVO> getState();

	public List<StateVO> getStateById(StateVO stateVO);

}
