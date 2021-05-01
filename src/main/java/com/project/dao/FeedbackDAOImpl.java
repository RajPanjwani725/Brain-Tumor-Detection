package com.project.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.ComplainVO;
import com.project.model.FeedbackVO;

@Repository
public class FeedbackDAOImpl implements FeedbackDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public void saveFeedback(FeedbackVO feedbackVO) {
		Session session=this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(feedbackVO);
		
	}

	@Override
	public List<FeedbackVO> getUserFeedback(FeedbackVO feedbackVO) {
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from FeedbackVO where   login_id='"+feedbackVO.getLoginVO().getLoginId()+"'");
		List<FeedbackVO> feedbackList=q.list();
		return feedbackList;
	}

	@Override
	public List<FeedbackVO> getFeedback() {
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from FeedbackVO ");
		List<FeedbackVO> feedbackList=q.list();
		return feedbackList;
	}

	@Override
	public List<FeedbackVO> getFeedbackById(FeedbackVO feedbackVO) {
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from FeedbackVO where status=true and id="+feedbackVO.getId());
		List<FeedbackVO> feedbackList=q.list();
		return feedbackList;
	}

}
