package net.mymsit.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller 
public class CalendarController {
	
	@RequestMapping("calendar.html")
	public String calendar(HttpServletRequest request) {
		return "calendar";
	}
	

}
