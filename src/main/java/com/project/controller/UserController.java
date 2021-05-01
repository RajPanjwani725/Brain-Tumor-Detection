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
import com.project.model.LoginVO;
import com.project.model.RegisterVO;
import com.project.model.StateVO;
import com.project.service.CityService;
import com.project.service.ComplainService;
import com.project.service.RegisterService;
import com.project.service.StateService;
import com.project.service.UserService;
import com.project.utils.Basemethods;

@Controller
public class UserController {
	@Autowired
	private UserService userService;	
	
	@Autowired 
	private RegisterService registerService;
	
	@Autowired 
	private ComplainService complainService;
	
	@Autowired
	private StateService stateService;
	
	@Autowired
	private CityService cityService;


	@GetMapping(value="admin/viewUser")
	public ModelAndView viewUser(@ModelAttribute RegisterVO registerVO){
		
		List<RegisterVO> userList=this.userService.getUser(registerVO);
		return new ModelAndView("admin/viewUser","userList",userList);
	}
	
	@GetMapping(value="admin/unblockUser")
	public ModelAndView unblockUser(@ModelAttribute RegisterVO registerVO ,@RequestParam int id){
		registerVO.setId(id);
		List<RegisterVO> userList=this.userService.getUserById(registerVO);
		RegisterVO registerVO1=userList.get(0);
		registerVO1.setStatus(true);
		
		String username=registerVO1.getLoginVO().getUsername();
		String password=registerVO1.getLoginVO().getPassword();
		String role=registerVO1.getLoginVO().getRole();
		int loginId=registerVO1.getLoginVO().getLoginId();
		int enabled=registerVO1.getLoginVO().getEnabled();
		
		
		LoginVO loginVO1=new LoginVO();
		loginVO1.setLoginId(loginId);
		loginVO1.setEnabled(1);
		loginVO1.setPassword(password);
		loginVO1.setRole(role);
		loginVO1.setUsername(username);
		
		this.registerService.saveUserLogin(loginVO1);
		
		
		
		this.registerService.saveUserRegister(registerVO1);
		return new ModelAndView("redirect:viewUser");
	}
	
	@GetMapping(value="admin/blockUser")
	public ModelAndView blockUser(@ModelAttribute RegisterVO registerVO ,@RequestParam int id){
		registerVO.setId(id);
		List<RegisterVO> userList=this.userService.getUserById(registerVO);
		RegisterVO registerVO1=userList.get(0);
		registerVO1.setStatus(false);
	
		
		String username=registerVO1.getLoginVO().getUsername();
		String password=registerVO1.getLoginVO().getPassword();
		String role=registerVO1.getLoginVO().getRole();
		int loginId=registerVO1.getLoginVO().getLoginId();
		int enabled=registerVO1.getLoginVO().getEnabled();
		
		
		LoginVO loginVO1=new LoginVO();
		loginVO1.setLoginId(loginId);
		loginVO1.setEnabled(0);
		loginVO1.setPassword(password);
		loginVO1.setRole(role);
		loginVO1.setUsername(username);
		
		this.registerService.saveUserLogin(loginVO1);
		
		
		
		this.registerService.saveUserRegister(registerVO1);
		return new ModelAndView("redirect:viewUser");
	}
	
	
	@GetMapping(value="user/userProfile")
	public ModelAndView userProfile(@ModelAttribute RegisterVO registerVO){
		
		String username=Basemethods.getUser();
		LoginVO loginVO=new LoginVO();
		loginVO.setUsername(username);
		
		// The method to get identity of LOGINED user is made in  COmplain Service so
		// It it's just called from here
		List<LoginVO> loginList =this.complainService.getLoginByUsername(loginVO);
		
		LoginVO loginVO1=loginList.get(0);
		registerVO.setLoginVO(loginVO1);
		List<RegisterVO> userList=this.userService.getUserByIdProfile(registerVO);
		List<StateVO> stateList =this.stateService.getState();
		List<CityVO> cityList=this.cityService.getCity();

		
		return new ModelAndView("user/userProfile","registerVO",userList.get(0)).addObject("stateList",stateList).addObject("userList",userList).addObject("cityList",cityList);
	}
	
	@PostMapping(value="user/updateUserProfile")
	public ModelAndView updateUserProfile(@ModelAttribute RegisterVO registerVO){
		

		//this.registerService.saveUserLogin(registerVO.getLoginVO());
		this.registerService.saveUserRegister(registerVO);		
		return new ModelAndView("redirect:userProfile");
	}
	
	@GetMapping(value="user/resetPassword")
	public ModelAndView changePassword(@ModelAttribute RegisterVO registerVO){
		
		
		String username=Basemethods.getUser();
		LoginVO loginVO=new LoginVO();
		loginVO.setUsername(username);
		
		// The method to get identity of LOGINED user is made in  COmplain Service so
		// It it's just called from here
		List<LoginVO> loginList =this.complainService.getLoginByUsername(loginVO);
		
		LoginVO loginVO1=loginList.get(0);
		registerVO.setLoginVO(loginVO1);
		
		return new ModelAndView("user/resetPassword","loginVO",loginList.get(0));
		
		
	}
	
	@PostMapping(value="user/updateUserProfilePassword")
	public ModelAndView updateUserProfilePassword(@RequestParam String password){
		
		String username = Basemethods.getUser();
		LoginVO loginVO = new LoginVO();
		loginVO.setUsername(username);
		
		// The method to get identity of LOGINED user is made in  COmplain Service so
				// It it's just called from here
		List<LoginVO> loginList = this.complainService.getLoginByUsername(loginVO);
		LoginVO loginVO1 = loginList.get(0);
		loginVO1.setPassword(password);
		

		this.registerService.saveUserLogin(loginVO1);
		return new ModelAndView("redirect:userProfile");
	}
	


}
