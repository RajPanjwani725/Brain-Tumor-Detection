package com.project.dao;

import java.util.List;

import com.project.model.PackageVO;

public interface PackageDAO {

	void savePackage(PackageVO packageVO);

	List<PackageVO> getPackage();

	List<PackageVO> getPackageById(PackageVO packageVO);

}
