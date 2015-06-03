package net.mymsit.controllers;

import javax.servlet.http.HttpServletRequest;

import net.mymsit.dao.CourseDAO;
import net.mymsit.dao.ProfileDAO;
import net.mymsit.user.Profile;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProfileController {
	ApplicationContext factory;
	ProfileDAO profileDAO;

	public ProfileController() {
		// TODO Auto-generated constructor stub
		factory = new ClassPathXmlApplicationContext(
				"spring/application-config.xml");
		profileDAO = (ProfileDAO) factory.getBean("profileDAO");
	}
	
	@RequestMapping("/profile")
	public String getProfile(HttpServletRequest request,Model modelView)
	{
		if(request.getSession().getAttribute("username")!=null)
		{
			String username=request.getSession().getAttribute("username").toString();
			Profile profile=profileDAO.getProfileDetails(username);
			if(profile==null)
				return "create_profile";
			else
			{
				modelView.addAttribute("profile", profile);
				return "profile";
			}
		}
		else
			return "redirect:/Login/signin";
	}

}
