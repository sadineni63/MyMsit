package net.mymsit.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NewFileController {
	
	@RequestMapping("/NewFile.html")
	public ModelAndView newFile() {
		ModelAndView modeView=new ModelAndView("NewFile");
		modeView.addObject("message","Hi this is my forst MVC page.");
		return modeView;
	}
}
