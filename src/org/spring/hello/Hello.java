package org.spring.hello;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Hello {

	@RequestMapping("/")
	public ModelAndView display(){
		System.out.println("Hello");
		return new ModelAndView("hello");
	}
}
