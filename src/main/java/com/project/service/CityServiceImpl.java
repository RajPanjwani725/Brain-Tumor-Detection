package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.CityDAO;
import com.project.model.CityVO;
import com.project.model.StateVO;

@Service
@Transactional
public class CityServiceImpl implements CityService{

	@Autowired
	private CityDAO cityDAO;
	
	@Override
	public void saveCity(CityVO cityVO) {
		this.cityDAO.saveCity(cityVO);
		
	}

	@Override
	public List<CityVO> getCity() {
			List<CityVO> cityList=this.cityDAO.getCity();
		return cityList;
	}

	@Override
	public List<CityVO> getCityById(CityVO cityVO) {
		List<CityVO> cityList=this.cityDAO.getCityById(cityVO);
		return cityList;
	}

	@Override
	public List<CityVO> getCityByStateId(StateVO stateVO) {
		List<CityVO> cityList=this.cityDAO.getCityByStateId(stateVO);
		return cityList;
	}



	

}
