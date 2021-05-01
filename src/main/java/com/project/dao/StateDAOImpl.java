package com.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.StateVO;

@Repository
public class StateDAOImpl implements StateDAO {

	@Autowired
	private SessionFactory sessionFactory;

	public void saveState(StateVO stateVO) {
		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(stateVO);
	}

	@Override
	public List<StateVO> getState() {
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from StateVO where status = true");
		List<StateVO> stateList=q.list();
		return stateList;
	}

	@Override
	public List<StateVO> getStateById(StateVO stateVO) {
		
		Session session=this.sessionFactory.getCurrentSession();
		System.out.println("from StateVO where status = true and id="+stateVO.getId());
		Query q=session.createQuery("from StateVO where status = true and id="+stateVO.getId());
		List<StateVO> stateList=q.list();
		return stateList;
	}
	
	

}
