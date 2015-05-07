package net.mymsit.controllers;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.ParseException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import net.mymsit.course.Course;
import net.mymsit.course.CoursesRootDirectory;
import net.mymsit.course.DirectoryManager;
import net.mymsit.course.ResourcePathResolver;
import net.mymsit.dao.CourseDAO;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.core.io.PathResource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CourseController {

	ApplicationContext factory;
	CourseDAO courseDAO;

	public CourseController() {
		// TODO Auto-generated constructor stub
		factory = new ClassPathXmlApplicationContext(
				"spring/application-config.xml");
		courseDAO = (CourseDAO) factory.getBean("courseDAO");
	}

	@RequestMapping("/courses.html")
	public String course(HttpServletRequest request, Model view) {
		HttpSession session = request.getSession();
		if (session.getAttribute("username") == null)
			return "redirect:/Login/signin";
		else if (session.getAttribute("role").toString()
				.equalsIgnoreCase("mentor")) {
			List<Course> courses = courseDAO.getCourseList();
			view.addAttribute("courses", courses);
			return "mentor_course";
		} else {
			List<Course> courses = courseDAO.getCourseList();
			view.addAttribute("courses", courses);
			return "courses";
		}
	}

	@RequestMapping("/course_content.html")
	public String courseContent(HttpServletRequest request) {
		if (request.getSession().getAttribute("username") == null)
			return "redirect:/Login/signin";
		return "course_content";
	}

	@RequestMapping("/create_course")
	public String createCourse(HttpServletRequest request)
			throws ParseException, IOException {

		String cid = request.getParameter("cid");
		String cname = request.getParameter("cname");
		String sDate = request.getParameter("sdate");
		String eDate = request.getParameter("edate");
		int status = courseDAO.createCourseDetails(cid, cname, sDate, eDate);
		if (status == 1) {
			new DirectoryManager().createCourseDirectory(cid);
				return "redirect:/mentor_course";
		} else {
			return "redirect:/mentor_course?course_create=failed";
		}
	}

	@RequestMapping("/create_week")
	public String createWeek(HttpServletRequest request) throws ParseException {
		String cid = request.getParameter("cid");
		int week = Integer.parseInt(request.getParameter("cname").toString());
		String sDate = request.getParameter("sdate");
		String eDate = request.getParameter("edate");
		int status = courseDAO.createWeeekDetails(cid, week, sDate, eDate);
		if (status == 1) {
			
			return "course_content";
		} else {
			return "redirect:/course_content?week_create=failed";
		}
	}

	@RequestMapping("/module_content.html")
	public String moduleContent(HttpServletRequest request) {
		return "module_content";
	}

	@RequestMapping("create_module")
	public String createModuleContent(HttpServletRequest request) {
		String cid = request.getParameter("course_id");
		String week = request.getParameter("week");
		String module = request.getParameter("module");
		return "";
	}
}
