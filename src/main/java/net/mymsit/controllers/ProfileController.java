package net.mymsit.controllers;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import net.mymsit.dao.CourseDAO;
import net.mymsit.dao.ProfileDAO;
import net.mymsit.user.Profile;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProfileController {
	ApplicationContext factory;
	ProfileDAO profileDAO;

	public ProfileController() {
		// TODO Auto-generated constructor stub
		factory = new ClassPathXmlApplicationContext(
				"spring/application-config.xml");
		profileDAO = (ProfileDAO) factory.getBean("profileDAO");
	}
	
	@RequestMapping("/profile")
	public String getProfile(HttpServletRequest request,Model modelView)
	{
		if(request.getSession().getAttribute("username")!=null)
		{
			String username=request.getSession().getAttribute("username").toString();
			Profile profile=profileDAO.getProfileDetails(username);
			if(profile==null)
				return "editprofile";
			else
			{
				modelView.addAttribute("profile", profile);
				return "profile";
			}
		}
		else
			return "redirect:/Login/signin";
	}
	
	@RequestMapping("/create_profile")
	public String createProfile(HttpServletRequest request,Model view) {
		String username= request.getParameter("username");
		if(username==null)
			return "redirect:/Login/signin";
		String name=request.getParameter("name");
		String dob=request.getParameter("dob");
		String email=request.getParameter("email");
		String pno=request.getParameter("phno");
		String address=request.getParameter("addr");
		String bGroup=request.getParameter("bgrp");
		Profile profile=new Profile(username, name, dob, email, pno, bGroup, address);
		if(profileDAO.updateProfileDetails(profile)==1)
		{
			view.addAttribute("profile",profile);
			return "profile";
		}
		else
			return "createprofile?status=failed";
	}

	@RequestMapping("/update_profile")
	public String updateProfilePage(HttpServletRequest request,Model view) throws ParseException {
		if(request.getSession().getAttribute("username")==null)
			return "redirect:/Login/signin";
		String username= request.getSession().getAttribute("username").toString();
		Profile profile=profileDAO.getProfileDetails(username);
		String d=profile.getDob();
		String[] dates=d.split("-");
		d=dates[2]+"-"+dates[1]+"-"+dates[0];
		profile.setDob(d);
		System.out.println(d);
			view.addAttribute("profile",profile);
			return "update_profile";
	}
	@RequestMapping("/update_profile.do")
	public String updateProfile(HttpServletRequest request,Model view) {
		String username= request.getParameter("username");
		if(username==null)
			return "redirect:/Login/signin";
		String name=request.getParameter("name");
		String dob=request.getParameter("dob");
		String email=request.getParameter("email");
		String pno=request.getParameter("phno");
		String address=request.getParameter("addr");
		String bGroup=request.getParameter("bgrp");
		Profile profile=new Profile(username, name, dob, email, pno, bGroup, address);
		if(profileDAO.updateProfileDetails(profile)==1)
		{
			view.addAttribute("profile",profile);
			return "profile";
		}
		else
			return "createprofile?status=failed";
	}

}
