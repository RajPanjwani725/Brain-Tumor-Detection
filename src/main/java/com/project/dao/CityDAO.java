package com.project.dao;

import java.util.List;

import com.project.model.CityVO;
import com.project.model.StateVO;

public interface CityDAO {

	void saveCity(CityVO cityVO);

	List<CityVO> getCity();

	List<CityVO> getCityById(CityVO cityVO);

	List<CityVO> getCityByStateId(StateVO stateVO);

}
