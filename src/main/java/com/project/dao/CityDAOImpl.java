package com.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.CityVO;
import com.project.model.StateVO;

@Repository
public class CityDAOImpl implements CityDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void saveCity(CityVO cityVO) {
		Session session=this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(cityVO);
		
	}

	@Override
	public List<CityVO> getCity() {
		Session session = this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from CityVO where status = true");
		List cityList=q.list();
		return cityList;
	}

	@Override
	public List<CityVO> getCityById(CityVO cityVO) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from CityVO where status = true and id="+cityVO.getId());
		List cityList=q.list();
		return cityList;
	}

	@Override
	public List<CityVO> getCityByStateId(StateVO stateVO) {
		Session session = this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from CityVO where status = true and state_id="+stateVO.getId());
		List cityList=q.list();
		return cityList;
	}

}
