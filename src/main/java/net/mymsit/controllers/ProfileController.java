package net.mymsit.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProfileController {
	
	@RequestMapping("/profile")
	public String getProfile(HttpServletRequest request,ModelAndView modelView)
	{
		modelView.setViewName("profile");
		return "profile";
	}

}
