package com.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.ComplainVO;
import com.project.model.LoginVO;

@Repository
public class ComplainDAOImpl implements ComplainDAO{

	@Autowired
	private SessionFactory sessionFactory;
	
	public void saveComplainReply(ComplainVO complainVO){
		Session session=this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(complainVO);
	}

	@Override
	public void saveComplain(ComplainVO complainVO) {
		Session session=this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(complainVO);
		
	}

	@Override
	public List<LoginVO> getLoginByUsername(LoginVO loginVO) {
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from LoginVO where username='"+loginVO.getUsername()+"'and role='ROLE_USER'");
		//enabled='"+1+"' and 
		List<LoginVO> loginList=q.list();
		return loginList;
	}

	@Override
	public List<ComplainVO> getComplain() {
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from ComplainVO");
		List<ComplainVO> complainList=q.list();
		return complainList;
	}

	@Override
	public List<ComplainVO> getUserComplain(ComplainVO complainVO) {
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from ComplainVO where  login_id='"+complainVO.getLoginVO().getLoginId()+"'");
		List<ComplainVO> complainList=q.list();
		return complainList;
	}

	@Override
	public List<ComplainVO> getComplainById(ComplainVO complainVO) {
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from ComplainVO where id="+complainVO.getId());
		List<ComplainVO> complainList=q.list();
		return complainList;
	}
}
