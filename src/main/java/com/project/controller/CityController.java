package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.CityVO;
import com.project.model.StateVO;
import com.project.service.CityService;
import com.project.service.StateService;

@Controller
public class CityController {

	@Autowired
	private CityService cityService;
	
	@Autowired
	private StateService stateService;
	
	@GetMapping(value="admin/addCity")
	public ModelAndView addCity(){
		List<StateVO> stateList =this.stateService.getState();
		return new ModelAndView("admin/addCity","cityVO", new CityVO()).addObject("stateList",stateList);
	}
	
	@GetMapping(value="admin/viewCity")
	public ModelAndView viewCity(){
		List<CityVO> cityList=this.cityService.getCity();
		return new ModelAndView("admin/viewCity","cityList",cityList);
	}
	
	@PostMapping(value="admin/saveCity")
	public ModelAndView saveCity(@ModelAttribute CityVO cityVO)
	{
		this.cityService.saveCity(cityVO);
		return new ModelAndView("redirect:viewCity");
		
	}
	
	
	@GetMapping(value="admin/deleteCity")
	public ModelAndView deleteCity(@ModelAttribute CityVO cityVO,@RequestParam int id )
	{
		cityVO.setId(id);
		List<CityVO> cityList= this.cityService.getCityById(cityVO);
		CityVO cityVO2=cityList.get(0);
		cityVO2.setStatus(false);
		this.cityService.saveCity(cityVO2);
		return new ModelAndView("redirect:viewCity");
		
	}
	
	@GetMapping(value="admin/editCity")
	public ModelAndView editCity(@ModelAttribute CityVO cityVO,@RequestParam int id )
	{
		cityVO.setId(id);
		List<StateVO> stateList =this.stateService.getState();
		List<CityVO> cityList= this.cityService.getCityById(cityVO);
		
		return new ModelAndView("admin/addCity","cityVO",cityList.get(0)).addObject("stateList",stateList);
		
	}
	
}
