package net.mymsit.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NotificationController {

		@RequestMapping("/notifications.html")
		public String notifications(HttpServletRequest request) {
			if(request.getSession().getAttribute("username")==null)
				return "redirect:/Login/signin";
			return "notifications";
		}
}
