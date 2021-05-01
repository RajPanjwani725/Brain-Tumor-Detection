package com.project.dao;

import java.util.List;

import com.project.model.StateVO;

public interface StateDAO {

	void saveState(StateVO stateVO);

	List<StateVO> getState();

	List<StateVO> getStateById(StateVO stateVO);

}
