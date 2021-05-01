package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.DatasetDAO;
import com.project.model.DatasetVO;
import com.project.model.RegisterVO;

@Service
@Transactional
public class DatasetServiceImpl implements DatasetService {

	@Autowired
	private DatasetDAO datasetDAO;
	
	@Override
	public void saveDataset(DatasetVO datasetVO) {
		this.datasetDAO.saveDataset(datasetVO);
		
	}

	@Override
	public List<DatasetVO> getDataset() {
		List<DatasetVO> datasetList=this.datasetDAO.getDataset();
		return datasetList;
	}

	@Override
	public List<DatasetVO> getDatasetById(DatasetVO datasetVO) {
		List<DatasetVO> datasetList=this.datasetDAO.getDatasetById(datasetVO);
		return datasetList;
	}

	@Override
	public List<DatasetVO> getUserDataset(DatasetVO datasetVO) {
		List<DatasetVO> datasetList=this.datasetDAO.getUserDataset(datasetVO);
		return datasetList;
	}

	@Override
	public List<RegisterVO> getUserDetailList(RegisterVO registerVO) {

		List<RegisterVO> userregisterList=this.datasetDAO.getUserDetailList(registerVO);
		
		return userregisterList;
	}
	

}
