package net.mymsit.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SecurityController {
	
	@RequestMapping("/access_denied")
	public String accessDenied()
	{
		return "access_denied";
	}
	
}
