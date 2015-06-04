package net.mymsit.controllers;

import javax.servlet.http.HttpServletRequest;

import net.mymsit.dao.ProfileDAO;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class mentorsprofile {
	ApplicationContext factory;
	ProfileDAO profileDAO;

	public mentorsprofile() {
		// TODO Auto-generated constructor stub
		factory = new ClassPathXmlApplicationContext(
				"spring/application-config.xml");
		profileDAO = (ProfileDAO) factory.getBean("profileDAO");
	}
	@RequestMapping("/mentorsprofile.html")
	public String getAllProfiles(HttpServletRequest request,Model view){
		if(request.getSession().getAttribute("username")==null)
			return "redirect:/Login/signin";
		else{
			view.addAttribute("mentorsprofile",profileDAO.getAllMentorProfiles());
			return "mentorsprofile";
		}
	
		
	}

}

