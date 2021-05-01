package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.PackageVO;
import com.project.service.PackageService;

@Controller
public class PackageController {

	@Autowired
	private PackageService packageService;
	
	@GetMapping(value="admin/addPackage")
	public ModelAndView addPackage(){
		return new ModelAndView("admin/addPackage","packageVO",new PackageVO());
	}
	
	@PostMapping(value="admin/savePackage")
	public ModelAndView saveState(@ModelAttribute PackageVO packageVO){
		this.packageService.savePackage(packageVO);
		return new ModelAndView("redirect:viewPackage");
	}
	
	@GetMapping(value="admin/viewPackage")
	public ModelAndView viewPackage(){
		List<PackageVO> packageList=this.packageService.getPackage();
		return new ModelAndView("admin/viewPackage","packageList",packageList);
	}
	
	@GetMapping(value="admin/deletePackage")
	public ModelAndView deletePackage(@ModelAttribute PackageVO packageVO,@RequestParam int id){
		packageVO.setId(id);
		List<PackageVO> packageList=this.packageService.getPackageById(packageVO);
		
		PackageVO packageVO2=packageList.get(0);
		
		packageVO2.setStatus(false);
		this.packageService.savePackage(packageVO2);
		return new ModelAndView("redirect:viewPackage");
	}
	
	@GetMapping(value="admin/editPackage")
	public ModelAndView editPackage(@ModelAttribute PackageVO packageVO,@RequestParam int id){
		
		List<PackageVO> packageList=this.packageService.getPackageById(packageVO);
		System.out.println(id);
		
		return new ModelAndView("admin/addPackage","packageVO",packageList.get(0));
	}
	
	//=================================================================================================
	
	@GetMapping(value="user/viewPackage")
	public ModelAndView addUserPackage(){
		List<PackageVO> packageList=this.packageService.getPackage();
	
		return new ModelAndView("user/viewPackage","packageList",packageList);
	}
	
	
	@GetMapping(value = "user/pageMaintenance")
	public ModelAndView page() {
		return new ModelAndView("user/pageMaintenance");
	}
	
	
}
