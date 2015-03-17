package net.mymsit.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NotificationController {

		@RequestMapping("/notifications.html")
		public String notifications() {
			return "notifications";
		}
}
