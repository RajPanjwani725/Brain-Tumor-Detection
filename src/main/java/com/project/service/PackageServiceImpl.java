package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.PackageDAO;
import com.project.model.PackageVO;

@Service
@Transactional
public class PackageServiceImpl implements PackageService{
	@Autowired
	private PackageDAO packageDAO;
	
	@Override
	public void savePackage(PackageVO packageVO){
		this.packageDAO.savePackage(packageVO);
	}

	@Override
	public List<PackageVO> getPackage() {
		List<PackageVO> packageList=this.packageDAO.getPackage();
		return packageList;
	}

	@Override
	public List<PackageVO> getPackageById(PackageVO packageVO) {
		List<PackageVO> packageList=this.packageDAO.getPackageById(packageVO);
		return packageList;
	}
	
	

}
