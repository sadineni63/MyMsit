package net.mymsit.controllers;

import java.io.IOException;

import java.text.ParseException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import net.mymsit.course.*;
import net.mymsit.course.CourseWeek;
import net.mymsit.course.DirectoryManager;
import net.mymsit.dao.CourseDAO;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
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
		else {
			List<Course> courses = courseDAO.getCourseList();
			view.addAttribute("courses", courses);
			if (session.getAttribute("role").toString()

			.equalsIgnoreCase("mentor")) {

				return "mentor_course";
			} else {
				return "courses";
			}
		}
	}

	@RequestMapping("/course_content.html")
	public String courseContent(HttpServletRequest request, Model view) {
		HttpSession session = request.getSession();
		if (session.getAttribute("username") == null)
			return "redirect:/Login/signin";
		else {
			String cid=request.getParameter("course_id");
			String cname=request.getParameter("cname");
			List<CourseWeek> courseWeeks = courseDAO.getWeekDurations(cid);
			session.setAttribute("cname", cname);
			session.setAttribute("cid", cid);
			view.addAttribute("courseWeeks", courseWeeks);
			if (session.getAttribute("role").toString().equalsIgnoreCase("mentor")) {
				return "mentor_course_content";
			} else {
				return "course_content";
			}
		}
	}

	@RequestMapping("/create_course")
	public String createCourse(HttpServletRequest request)
			throws ParseException, IOException {
		String cid = request.getParameter("cid");
		String cname = request.getParameter("cname");
		int now = Integer.parseInt(request.getParameter("now"));
		String sDate = request.getParameter("sdate");
		String eDate = request.getParameter("edate");
		int status = courseDAO.createCourseDetails(cid, cname, now, sDate,
				eDate);
		if (status == 1) {
			new DirectoryManager().createCourseDirectory(cid);
			return "redirect:/courses.html";
		} else {
			return "redirect:/courses.html?course_create=failed";
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
			new DirectoryManager().createWeekDirectory(cid, week);
			return "redirect:/course_content";
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
		String cid = request.getParameter("cid");
		int week = Integer.parseInt(request.getParameter("week"));
		int module = Integer.parseInt(request.getParameter("m_no"));
		String mName=request.getParameter("m_name");
		String date=request.getParameter("m_date");
		String day=request.getParameter("day");
		int not=Integer.parseInt(request.getParameter("not"));
		String session=request.getParameter("session");
		String deadline=request.getParameter("deadline");
		Module m=new Module(cid, week, module, mName, date, day, not, session, deadline);
		courseDAO.createModuleDetails(m);
			return "course_content.html?cid="+cid;
	}
}
