package net.mymsit.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller 
public class CalendarController {
	
	@RequestMapping("calendar.html")
	public String calendar() {
		return "calendar";
	}

}
