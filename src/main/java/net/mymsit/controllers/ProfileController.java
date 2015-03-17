package net.mymsit.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProfileController {
	
	@RequestMapping("/profile.html")
	public String getProfile(ModelAndView modelView)
	{
		modelView.setViewName("profile");
		return "profile";
	}

}
