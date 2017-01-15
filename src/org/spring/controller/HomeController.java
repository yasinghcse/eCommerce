package org.spring.controller;

import org.spring.product.ProductDAO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	private ProductDAO productDao = new ProductDAO();

	@RequestMapping("/")
	public String display(){
		System.out.println("Hello This is Home");
		return "Home";
	}
	
	@RequestMapping("/productList")
	public String getProducts(Model model){
		model.addAttribute("product",productDao.getProductList());
		return "productList";
	}
}
