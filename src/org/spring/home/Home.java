package org.spring.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Home {

	@RequestMapping("/")
	public ModelAndView display(){
		System.out.println("Hello This is Home");
		return new ModelAndView("Home");
	}
}
