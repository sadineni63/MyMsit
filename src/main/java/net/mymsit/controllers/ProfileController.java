package net.mymsit.controllers;

import net.mymsit.user.StudentRegistration;

import org.jboss.netty.handler.codec.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProfileController {
	
	@RequestMapping("/profile")
	public String getProfile(HttpRequest request,ModelAndView modelView)
	{
		Profile profile=
		modelView.setViewName("profile");
		return "profile";
	}

}
