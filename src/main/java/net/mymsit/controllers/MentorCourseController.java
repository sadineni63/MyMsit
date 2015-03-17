package net.mymsit.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MentorCourseController {
	
	@RequestMapping("/mentor_course.html")
	public String mentorCourse() {
		return "mentor_course";
	}
	
	@RequestMapping("/mentor_course_content.html")
	public String mentorCourseContent() {
		return "mentor_course_content";
	}

}
