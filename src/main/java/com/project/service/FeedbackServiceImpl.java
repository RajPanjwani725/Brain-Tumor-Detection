package com.project.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.FeedbackDAO;
import com.project.model.FeedbackVO;

@Service
@Transactional
public class FeedbackServiceImpl  implements FeedbackService{

	@Autowired
	private FeedbackDAO feedbackDAO;
	
	@Override
	public void saveFeedback(FeedbackVO feedbackVO) {
		this.feedbackDAO.saveFeedback(feedbackVO);
		
	}

	@Override
	public List<FeedbackVO> getUserFeedback(FeedbackVO feedbackVO) {
		List<FeedbackVO> feedbackList=this.feedbackDAO.getUserFeedback(feedbackVO);
		return feedbackList;
	}

	@Override
	public List<FeedbackVO> getFeedback() {
		List<FeedbackVO> feedbackList=this.feedbackDAO.getFeedback();
		return feedbackList;
	}

	@Override
	public List<FeedbackVO> getFeedbackById(FeedbackVO feedbackVO) {
		List<FeedbackVO> feedbackList=this.feedbackDAO.getFeedbackById(feedbackVO);
		return feedbackList;
	}

}
