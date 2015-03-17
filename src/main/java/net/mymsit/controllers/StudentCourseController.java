package net.mymsit.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StudentCourseController {
	@RequestMapping("/courses.html")
	public String course() {
		return "courses";
	}
	
	@RequestMapping("/course_content.html")
	public String courseContent() {
		return "course_content";
	}
	

}
