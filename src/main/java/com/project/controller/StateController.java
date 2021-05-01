package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.CityVO;
import com.project.model.StateVO;
import com.project.service.CityService;
import com.project.service.StateService;

@RestController
public class StateController {

	@Autowired
	private StateService stateService;

	@Autowired
	private CityService cityService;

	@GetMapping(value = "admin/addState")
	public ModelAndView addState() {
		return new ModelAndView("admin/addState", "stateVO", new StateVO());
	}

	@PostMapping(value = "admin/saveState")
	public ModelAndView saveState(@ModelAttribute StateVO stateVO) {
		this.stateService.saveState(stateVO);
		return new ModelAndView("redirect:viewState");
	}

	@GetMapping(value = "admin/viewState")
	public ModelAndView viewState() {
		List<StateVO> stateList = this.stateService.getState();
		return new ModelAndView("admin/viewState", "stateList", stateList);
	}

	@GetMapping(value = "admin/deleteState")
	public ModelAndView deleteState(@ModelAttribute StateVO stateVO, @ModelAttribute CityVO cityVO,
			@RequestParam int id) {
		stateVO.setId(id);

		List<StateVO> stateList = this.stateService.getStateById(stateVO);
		System.out.println(id);

		List<CityVO> cityList = this.cityService.getCityByStateId(stateVO);
		System.out.println(cityList.size());

		int i;
		for (i = 0; i < cityList.size(); i++) {
			CityVO cityVO2 = cityList.get(i);
			cityVO2.setStatus(false);
			this.cityService.saveCity(cityVO2);

		}

		StateVO stateVO2 = stateList.get(0);
		stateVO2.setStatus(false);
		this.stateService.saveState(stateVO2);
		return new ModelAndView("redirect:viewState");
	}

	@GetMapping(value = "getSubcategoryByStateId")
	public ResponseEntity StateController(@ModelAttribute StateVO stateVO, @RequestParam int id) {
		stateVO.setId(id);
		CityVO cityVO = new CityVO();

		List<CityVO> cityList = this.cityService.getCityByStateId(stateVO);

		System.out.println(cityList.size());
		System.out.println();

		return new ResponseEntity(cityList, HttpStatus.OK);
	}

	@GetMapping(value = "user/getSubcategoryByStateIds")
	public ResponseEntity StateControllers(@ModelAttribute StateVO stateVO, @RequestParam int id) {
		stateVO.setId(id);
		CityVO cityVO = new CityVO();

		List<CityVO> cityList = this.cityService.getCityByStateId(stateVO);

		return new ResponseEntity(cityList, HttpStatus.OK);
	}

	@GetMapping(value = "admin/editState")
	public ModelAndView editState(@ModelAttribute StateVO stateVO, @RequestParam int id) {
		stateVO.setId(id);
		List<StateVO> stateList = this.stateService.getStateById(stateVO);
		System.out.println(id);

		return new ModelAndView("admin/addState", "stateVO", stateList.get(0));
	}

}
