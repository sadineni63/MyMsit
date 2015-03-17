package net.mymsit.controllers;

import javax.net.ssl.HttpsURLConnection;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller 
public class StudentDashboardController {
	
	@RequestMapping("/student_dashboard")
	public String studentDashboard(HttpServletRequest request,Model model) {
		model.addAttribute("username",request.getSession().getAttribute("username"));
		return "student_dashboard";
	}
	@RequestMapping("/dashboard")
	public String dashboard(HttpServletRequest request) {
		HttpSession session=request.getSession();
		if(session.getAttribute("role").toString().equalsIgnoreCase("student"))
			return "redirect:/student_dashboard";
		else
			return "redirect:/mentor_dashboard";
	}
	
}
