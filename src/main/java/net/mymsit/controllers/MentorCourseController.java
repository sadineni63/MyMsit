package net.mymsit.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MentorCourseController {
	
	@RequestMapping("/mentor_course.html")
	public String mentorCourse(HttpServletRequest request) {
		if(request.getSession().getAttribute("username")==null)
			return "redirect:/Login/signin";
		else if(request.getSession().getAttribute("role").toString().equalsIgnoreCase("mentor"))
			return "mentor_course";
		else
			return "redirect:/access_denied";
		
	}
	
	@RequestMapping("/mentor_course_content.html")
	public String mentorCourseContent(HttpServletRequest request) {
		if(request.getSession().getAttribute("username")==null)
			return "redirect:/Login/signin";
		else if(request.getSession().getAttribute("role").toString().equalsIgnoreCase("mentor"))
		{
			String cid=request.getParameter("course_id");
			if(cid==null)
				cid=(String) request.getSession().getAttribute("cid");
			request.getSession().setAttribute("cid", cid);
			return "mentor_course_content";
		}
		else
			return "redirect:/access_denied";
	}

}
