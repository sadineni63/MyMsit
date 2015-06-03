package net.mymsit.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CalendarController {
	
	@RequestMapping("calendar.html")
	public String calendar(HttpServletRequest request, Model view) {
		HttpSession session = request.getSession();
		if (session.getAttribute("username") == null)
			return "redirect:/Login/signin";
		else if (session.getAttribute("role").toString()
				.equalsIgnoreCase("mentor")) {
			return "javaplanner";
		} else {
			return "studentcalendar";
		}
	}

	@RequestMapping("/calendar.html")
	public String calendar(HttpServletRequest request) {
		HttpSession session=request.getSession();
		if(session.getAttribute("username")!=null)
		{
			System.out.println(session.getAttribute("role").toString());
			if(session.getAttribute("role").toString().equalsIgnoreCase("student"))
				return "student_calendar";
			else
				return "mentor_calendar";
		}
		else
			return "signin/login";
	}

}
