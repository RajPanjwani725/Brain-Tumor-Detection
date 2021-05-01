package com.project.dao;

import java.util.List;

import com.project.model.DatasetVO;
import com.project.model.RegisterVO;

public interface DatasetDAO {

	void saveDataset(DatasetVO datasetVO);

	List<DatasetVO> getDataset();

	List<DatasetVO> getDatasetById(DatasetVO datasetVO);

	List<DatasetVO> getUserDataset(DatasetVO datasetVO);

	List<RegisterVO> getUserDetailList(RegisterVO registerVO);

}
