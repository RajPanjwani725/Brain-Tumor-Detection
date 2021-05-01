package com.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.itextpdf.text.log.SysoCounter;
import com.project.model.DatasetVO;
import com.project.model.RegisterVO;

@Repository
public class DatasetDAOImpl implements DatasetDAO {

	
	@Autowired
	private SessionFactory sessionFactory; 
	
	@Override
	public void saveDataset(DatasetVO datasetVO) {
		Session session=this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(datasetVO);
		
	}

	@Override
	public List<DatasetVO> getDataset() {
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from DatasetVO where status=true");
		List<DatasetVO> datasetList=q.list();
		return datasetList;
	}

	@Override
	public List<DatasetVO> getDatasetById(DatasetVO datasetVO) {
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from DatasetVO where status=true and id="+datasetVO.getId());
		List<DatasetVO> datasetList=q.list();
		return datasetList;
		}

	@Override
	public List<DatasetVO> getUserDataset(DatasetVO datasetVO) {
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from DatasetVO where status=true and login_id="+datasetVO.getLoginVO().getLoginId());
		List<DatasetVO> datasetList=q.list();
		System.out.println("++++++++++++++++++++++++++++++++++++");
		System.out.println("++++++++++++++++++++++++++++++++++++");
		System.out.println("++++++++++++++++++++++++++++++++++++");
		System.out.println(datasetList);
		System.out.println("++++++++++++++++++++++++++++++++++++");
		System.out.println("++++++++++++++++++++++++++++++++++++");
		System.out.println("++++++++++++++++++++++++++++++++++++");
		return datasetList;
	}

	@Override
	public List<RegisterVO> getUserDetailList(RegisterVO registerVO) {
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from RegisterVO where login_id='"+registerVO.getLoginVO().getLoginId()+"'");
		List<RegisterVO> userregisterList=q.list();
		
		
		return userregisterList;
	}

	

}
