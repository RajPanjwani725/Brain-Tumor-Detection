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
import com.project.utils.Basemethods;

@Controller
public class RegisterController {

	@Autowired
	private StateService stateService;

	@Autowired
	private CityService cityService;

	@Autowired
	private RegisterService registerService;

	@Autowired
	private ComplainService complainService;

	@GetMapping(value = "register")
	public ModelAndView register() {

		List<StateVO> stateList = this.stateService.getState();
		List<CityVO> cityList = this.cityService.getCity();

		return new ModelAndView("register", "registerVO", new RegisterVO()).addObject("stateList", stateList)
				.addObject("cityList", cityList);
	}

	@PostMapping(value = "saveUser")
	public ModelAndView saveUser(@ModelAttribute RegisterVO registerVO, @RequestParam String username) {

		LoginVO loginVO1 = new LoginVO();
		loginVO1.setUsername(username);
		List<LoginVO> loginList = this.complainService.getLoginByUsername(loginVO1);

		if (loginList.size() == 0) {

			LoginVO loginVO = new LoginVO();
			loginVO.setEnabled(1);
			loginVO.setRole("ROLE_USER");
			loginVO.setUsername(username);

			String password = Basemethods.generatePassword();
			loginVO.setPassword(password);

			Basemethods.sendMail(username, password);
			this.registerService.saveUserLogin(loginVO);

			registerVO.setLoginVO(loginVO);
			this.registerService.saveUserRegister(registerVO);

			return new ModelAndView("login", "sucessMessage", "You have Sucessfully Registered ")
					.addObject("sucessMessage2", "Your Password is send to registered Email-Id");

		}
		if (loginList.size() != 0) {
			return new ModelAndView("register", "failureMessage", "This Username Already Exist ");

		}

		return new ModelAndView("redirect:/");

	}

	@GetMapping(value = "passwordRecovery")
	public ModelAndView passwordRecovery() {
		return new ModelAndView("passwordRecovery");
	}

	@PostMapping(value = "sendpasswordRecovery")
	public ModelAndView sendpasswordRecovery(@RequestParam String username) {
		LoginVO loginVO = new LoginVO();
		loginVO.setUsername(username);
		List<LoginVO> loginList = this.complainService.getLoginByUsername(loginVO);
		System.out.println("=========================");
		System.out.println("=========================");
		System.out.println(loginList);
		System.out.println("=========================");
		System.out.println("=========================");

		if (loginList.size() != 0) {

			LoginVO loginVO1 = new LoginVO();
			loginVO1 = loginList.get(0);

			if (loginVO1.getEnabled() == 0) {
				return new ModelAndView("passwordRecovery", "failureMessage", "This Email-Id is Blocked");

			} else {
				System.out.println(loginVO1.getLoginId());

				loginVO.setEnabled(1);
				loginVO.setRole("ROLE_USER");
				loginVO.setUsername(username);
				loginVO.setLoginId(loginVO1.getLoginId());
				loginVO.setPassword(loginVO1.getPassword());

				String password = (String) loginVO1.getPassword();

				Basemethods.sendMail(username, password);
				this.registerService.saveUserLogin(loginVO);
				return new ModelAndView("login", "sucessMessage",
						" Password is sent to your Registered Email-Id");
			}

		}

		if (loginList.size() == 0) {

			return new ModelAndView("passwordRecovery", "failureMessage", "This Email-Id Does not Exist");
		}

		return new ModelAndView("passwordRecovery");
	}

}
