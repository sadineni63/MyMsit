package net.mymsit.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MentorDashboardController {
	
	@RequestMapping("/mentor_dashboard.html")
	public String mentorDashboard() {
		return "mentor_dashboard";
	}
}
