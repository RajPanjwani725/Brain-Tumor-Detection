package com.project.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.project.model.CityVO;
import com.project.model.StateVO;


public interface CityService {

	void saveCity(CityVO cityVO);

	List<CityVO> getCity();

	List<CityVO> getCityById(CityVO cityVO);

	List<CityVO> getCityByStateId(StateVO stateVO);

}
