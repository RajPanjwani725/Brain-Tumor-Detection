package com.project.dao;

import java.util.List;

import com.project.model.FeedbackVO;

public interface FeedbackDAO {

	void saveFeedback(FeedbackVO feedbackVO);

	List<FeedbackVO> getUserFeedback(FeedbackVO feedbackVO);

	List<FeedbackVO> getFeedback();

	List<FeedbackVO> getFeedbackById(FeedbackVO feedbackVO);

}
