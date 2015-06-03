package net.mymsit.controllers;

import javax.servlet.http.HttpServletRequest;

import net.mymsit.course.LearningCenter;
import net.mymsit.dao.LoginDAO;
import net.mymsit.security.BCrypt;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class UserController {
	
	ApplicationContext factory;
	LoginDAO loginDao;
	public UserController() {
		// TODO Auto-generated constructor stub
		factory = new ClassPathXmlApplicationContext(
				"spring/application-config.xml");
		loginDao = (LoginDAO) factory.getBean("loginDAO");
	}
	@RequestMapping("/users")
	public String greateForm(HttpServletRequest request) {
		if(request.getSession().getAttribute("username")==null)
			return "redirect:/Login/signin";
		else if(request.getSession().getAttribute("role").toString().equalsIgnoreCase("mentor"))
			return "create_login";
		else
			return "redirect:/access_denied";
	}
	@RequestMapping("/create.do")
	public String createLoginDetails(HttpServletRequest request) {
		if(!request.isRequestedSessionIdValid())
			return "redirect:/Login/signin";
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String role = request.getParameter("role");
		String c = request.getParameter("learning_center");
		LearningCenter center = LearningCenter.valueOf(c);
		password = BCrypt.hashpw(password, BCrypt.gensalt(13));
		int success = 0;
		try {
			success = loginDao.createLoginDetails(username, password, role,center);
		} catch (Exception e) {
			// TODO: handle exception
		}
		if (success == 0)
			request.getSession().setAttribute("logincreated", "false");
		else
			request.getSession().setAttribute("logincreated", "true");
		return "create_login";
	}

}
