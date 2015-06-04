package net.mymsit.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import net.mymsit.dao.ProfileDAO;

@Controller
public class BatchMatesController {
	
	ApplicationContext factory;
	ProfileDAO profileDAO;

	public BatchMatesController() {
		// TODO Auto-generated constructor stub
		factory = new ClassPathXmlApplicationContext(
				"spring/application-config.xml");
		profileDAO = (ProfileDAO) factory.getBean("profileDAO");
	}
	@RequestMapping("/batchmates.html")
	public String getAllProfiles(HttpServletRequest request,Model view){
		if(request.getSession().getAttribute("username")==null)
			return "redirect:/Login/signin";
		else{
			view.addAttribute("batchmates",profileDAO.getAllStudentProfiles());
			return "batchmates";
		}
	
		
	}
}
