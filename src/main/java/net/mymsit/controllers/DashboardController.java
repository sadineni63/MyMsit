package net.mymsit.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller 
public class DashboardController {
	
	@RequestMapping("/student_dashboard")
	public String studentDashboard(HttpServletRequest request,Model model) {
		if(request.getSession().getAttribute("username")==null)
			return "redirect:/Login/signin";
			
		model.addAttribute("username",request.getSession().getAttribute("username"));
		return "student_dashboard";
	}
	
	@RequestMapping("/mentor_dashboard")
	public String mentorDashboard(HttpServletRequest request,Model model) {
		if(request.getSession().getAttribute("username")==null)
			return "redirect:/Login/signin";
			
		model.addAttribute("username",request.getSession().getAttribute("username"));
		return "mentor_dashboard";
	}
	
	@RequestMapping("/dashboard")
	public String dashboard(HttpServletRequest request) {
		if(request.getSession().getAttribute("username")==null)
			return "redirect:/Login/signin";
		HttpSession session=request.getSession();
		if(session.getAttribute("role").toString().equalsIgnoreCase("student"))
			return "redirect:/student_dashboard";
		else
			return "redirect:/mentor_dashboard";
	}
	@RequestMapping("/dashboard.html")
	public String dashboard1(HttpServletRequest request) {
		if(request.getSession().getAttribute("username")==null)
			return "redirect:/Login/signin";
		HttpSession session=request.getSession();
		if(session.getAttribute("role").toString().equalsIgnoreCase("student"))
			return "redirect:/student_dashboard";
		else
			return "redirect:/mentor_dashboard";
	}
	
}
