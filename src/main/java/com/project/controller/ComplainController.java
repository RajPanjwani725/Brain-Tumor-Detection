package com.project.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.ComplainVO;
import com.project.model.LoginVO;
import com.project.service.ComplainService;
import com.project.utils.Basemethods;


@Controller
public class ComplainController {

	@Autowired
	private ComplainService complainService;

	@GetMapping(value="admin/viewComplain")
	public ModelAndView viewComplain(){
		
		List<ComplainVO> complainList=this.complainService.getComplain();
		
		System.out.println(complainList);
		System.out.println(complainList.size());
		
		
		
		return new ModelAndView("admin/viewComplain","complainList",complainList);
	}
	
	
	@GetMapping(value="admin/replyComplain")
	public ModelAndView replyComplain(@ModelAttribute ComplainVO complainVO,@RequestParam int id){
		
		complainVO.setId(id);
		List<ComplainVO> complainList=this.complainService.getComplainById(complainVO);
		return new ModelAndView("admin/replyComplain","complainVO",complainList.get(0));
		
	}
	
	@PostMapping(value="admin/saveComplainReply")
	public ModelAndView saveComplainReply(@ModelAttribute ComplainVO complainVO)	
	{
		complainVO.setComplainStatus("Resolved");
		Date d=new Date();
		SimpleDateFormat formatter=new SimpleDateFormat("dd-M-yyyy hh:mm:ss");
		String date= formatter.format(d);
		complainVO.setReplyDateTime(date);
		
		this.complainService.saveComplainReply(complainVO);
		return new ModelAndView("redirect:viewComplain");
		
	}
	
	@GetMapping(value="admin/deleteComplain")
	public ModelAndView deleteComplain(@ModelAttribute ComplainVO complainVO,@RequestParam int id )
	{
		complainVO.setId(id);
		List<ComplainVO> complainList=this.complainService.getComplainById(complainVO);
		ComplainVO complainVO1=complainList.get(0);
		
		complainVO1.setStatus(false);
		complainVO1.setComplainReply("deleted");
		
		this.complainService.saveComplain(complainVO1);
		return new ModelAndView("redirect:viewComplain");
		
	}
	
	//================================USER========================
	
	@GetMapping(value="user/addComplain")
	public ModelAndView addComplain(){
		return new ModelAndView("user/addComplain","complainVO", new ComplainVO());
		
	}
	
	@PostMapping(value="user/saveComplain")
	public ModelAndView saveComplain(@ModelAttribute ComplainVO complainVO){
		
		Date d=new Date();
		SimpleDateFormat formatter=new SimpleDateFormat("dd-M-yyyy hh:mm:ss");
		String date= formatter.format(d); 
		complainVO.setComplainDateTime(date);
		
		
		String username=Basemethods.getUser();
		LoginVO loginVO=new LoginVO();
		loginVO.setUsername(username);
		
		List<LoginVO> loginList =this.complainService.getLoginByUsername(loginVO);
		LoginVO loginVO1=loginList.get(0);
		complainVO.setLoginVO(loginVO1);
		
		complainVO.setStatus(true);
		
		this.complainService.saveComplain(complainVO);
		return new ModelAndView("redirect:viewUserComplain");
	}
	
	
	
	@GetMapping(value="user/viewUserComplain")
	public ModelAndView viewUserComplain(@ModelAttribute ComplainVO complainVO)
	{
		String username=Basemethods.getUser();
		LoginVO loginVO=new LoginVO();
		loginVO.setUsername(username);
		
		List<LoginVO> loginList =this.complainService.getLoginByUsername(loginVO);
		LoginVO loginVO1=loginList.get(0);
		complainVO.setLoginVO(loginVO1);
		
		
		List<ComplainVO> complainList=this.complainService.getUserComplain(complainVO);
		
		return new ModelAndView("user/viewComplain","complainList",complainList);
		
	}
}
