package org.spring.controller;

import java.io.IOException;

import org.spring.dao.ProductDao;
import org.spring.dao.imp.ProductDaoImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@Autowired
	private ProductDao productDao;

	@RequestMapping("/")
	public String display(){
		System.out.println("Hello This is Home");
		return "Home";
	}
	
	@RequestMapping("/productList")
	public String getProducts(Model model){
		model.addAttribute("product",productDao.getAllProducts());
		return "productList";
	}
	
	@RequestMapping("/productList/viewProduct/{productId}")
	public String viewProduct(@PathVariable String productId, Model model) throws IOException{
		model.addAttribute("product",productDao.getProductById(productId));
		return "viewProduct";
	}
}
