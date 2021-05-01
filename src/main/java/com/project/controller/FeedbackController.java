package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.model.FeedbackVO;
import com.project.model.LoginVO;
import com.project.service.ComplainService;
import com.project.service.FeedbackService;
import com.project.utils.Basemethods;

@Controller
public class FeedbackController {

	@Autowired
	private FeedbackService feedbackService;

	@Autowired
	private ComplainService complainService;

	@GetMapping(value = "admin/viewFeedback")
	public ModelAndView viewFeedback() {
		List<FeedbackVO> feedbackList = this.feedbackService.getFeedback();

		return new ModelAndView("admin/viewFeedback", "feedbackList", feedbackList);
	}

	@GetMapping(value = "admin/deleteFeedback")
	public ModelAndView deleteFeedback(@ModelAttribute FeedbackVO feedbackVO, @RequestParam int id) {
		feedbackVO.setId(id);
		System.out.println(id);
		List<FeedbackVO> feedbackList = this.feedbackService.getFeedbackById(feedbackVO);
		FeedbackVO feedbackVO1 = feedbackList.get(0);
		feedbackVO1.setStatus(false);
		this.feedbackService.saveFeedback(feedbackVO1);

		return new ModelAndView("redirect:viewFeedback");
	}

	@GetMapping(value = "user/addFeedback")
	public ModelAndView addFeedback() {
		return new ModelAndView("user/addFeedback", "feedbackVO", new FeedbackVO());
	}

	@PostMapping(value = "user/saveFeedback")
	public ModelAndView saveFeedback(@ModelAttribute FeedbackVO feedbackVO, @RequestParam String rating) {

		String username = Basemethods.getUser();
		LoginVO loginVO = new LoginVO();
		loginVO.setUsername(username);
		
		// The method to get identity of LOGINED user is made in  COmplain Service so
				// It it's just called from here
		List<LoginVO> loginList = this.complainService.getLoginByUsername(loginVO);
		LoginVO loginVO1 = loginList.get(0);
		feedbackVO.setLoginVO(loginVO1);
		
		
		
		feedbackVO.setFeedbackRating(rating);

		this.feedbackService.saveFeedback(feedbackVO);
		return new ModelAndView("redirect:viewUserFeedback");
	}

	@GetMapping(value = "user/viewUserFeedback")
	public ModelAndView viewUserFeedback(@ModelAttribute FeedbackVO feedbackVO) {
		String username = Basemethods.getUser();
		LoginVO loginVO = new LoginVO();
		loginVO.setUsername(username);

		List<LoginVO> loginList = this.complainService.getLoginByUsername(loginVO);
		LoginVO loginVO1 = loginList.get(0);
		feedbackVO.setLoginVO(loginVO1);

		List<FeedbackVO> feedbackList = this.feedbackService.getUserFeedback(feedbackVO);

		return new ModelAndView("user/viewFeedback", "feedbackList", feedbackList);

	}
}
