package com.project.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.LoginVO;
import com.project.model.RegisterVO;

@Repository
public class RegisterDAOImpl implements RegisterDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void saveUserLogin(LoginVO loginVO) {
		Session session=this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(loginVO);
		
	}

	@Override
	public void saveUserRegister(RegisterVO registerVO) {
		Session session=this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(registerVO);
		
	}
	

}
