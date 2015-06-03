package net.mymsit.controllers;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.mymsit.course.LearningCenter;
import net.mymsit.dao.LoginDAO;
import net.mymsit.security.BCrypt;
import net.mymsit.user.Login;

import org.jboss.netty.handler.codec.http.HttpRequest;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/Login")
public class LoginRequestHandler {

	ApplicationContext factory;
	LoginDAO loginDao;
	public LoginRequestHandler() {
		// TODO Auto-generated constructor stub
		factory = new ClassPathXmlApplicationContext(
				"spring/application-config.xml");
		loginDao = (LoginDAO) factory.getBean("loginDAO");
	}
	
	@RequestMapping("/signin")
	public String loginInForm(HttpServletRequest request) {
		if(request.getSession().getAttribute("username")!=null)
			return "redirect:/dashboard";
		return "login";
	}
	
	@RequestMapping("/signin.do")
	public String signInUser(HttpServletRequest request) throws IOException {
		
		if(request.getSession().getAttribute("username")!=null)
			return "redirect:/dashboard";
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		Login details;
		details = loginDao.getLoginDetails(username);
		if (details == null) {
			request.getSession().setAttribute("loginstatus", "failed");
			return "login";
		} else {
			String encryptedPassword = details.getPassword();
			if (BCrypt.checkpw(password, encryptedPassword)) {
				request.getSession().setAttribute("username", username);
				request.getSession().setAttribute("role", details.getRole());
				if(details.getRole().equalsIgnoreCase("student"))
					return "redirect:/student_dashboard";
				else
					return "redirect:/mentor_dashboard";
			} else {
				request.getSession().setAttribute("loginstatus", "failed");
				return "login";
			}
		}
	}
	
	@RequestMapping("signout")
	public String logout(HttpServletRequest request)
	{
		HttpSession session=request.getSession();
		session.removeAttribute("username");
		session.removeAttribute("role");
		return "login";
	}

	
}
