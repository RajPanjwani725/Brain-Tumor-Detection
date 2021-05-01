package com.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.RegisterVO;

@Repository
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	

	@Override
	public List<RegisterVO> getUser(RegisterVO registerVO) {
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from RegisterVO ");
		List<RegisterVO> userList=q.list();
		return userList;
	}


	@Override
	public List<RegisterVO> getUserById(RegisterVO registerVO) {
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from RegisterVO where id="+registerVO.getId());
		List<RegisterVO> userList=q.list();
		return userList;
	}


	@Override
	public List<RegisterVO> getUserByIdProfile(RegisterVO registerVO) {
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from RegisterVO where login_id="+registerVO.getLoginVO().getLoginId());
		List<RegisterVO> userList=q.list();
		return userList;
	}

}
