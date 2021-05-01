package com.project.service;

import java.util.List;

import com.project.model.FeedbackVO;

public interface FeedbackService {

	void saveFeedback(FeedbackVO feedbackVO);

	List<FeedbackVO> getUserFeedback(FeedbackVO feedbackVO);

	List<FeedbackVO> getFeedback();

	List<FeedbackVO> getFeedbackById(FeedbackVO feedbackVO);

}
