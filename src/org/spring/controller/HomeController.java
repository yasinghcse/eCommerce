package org.spring.controller;

import java.io.IOException;
import java.lang.reflect.Method;

import org.spring.dao.ProductDao;
import org.spring.dao.imp.ProductDaoImpl;
import org.spring.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	public String viewProduct(@PathVariable int productId, Model model) throws IOException{
		model.addAttribute("product",productDao.getProductById(productId));
		return "viewProduct";
	}
	@RequestMapping("/admin")
	public String getAdmin(){
		return "admin";
	}
	
	@RequestMapping("/admin/productInventory")
	public String productInventory(Model model){
		model.addAttribute("product",productDao.getAllProducts());
		return "productInventory";
	}
	
	@RequestMapping(value = "/admin/productInventory/addProduct" , method= RequestMethod.GET)
	public String addProduct(Model model){
		Product product = new Product();
		product.setProductCategory("instrument");
		product.setProductCondition("new");
		product.setProductStatus("active");
		model.addAttribute("product",product);
		return "addProduct";
	}
	
	@RequestMapping(value="/admin/productInventory/addProduct",method= RequestMethod.POST)
	public String addProductPost(@ModelAttribute("product") Product product){
		productDao.addProduct(product);
		return "redirect:/admin/productInventory";
	}
	
	
	@RequestMapping("/admin/productInventory/deleteProduct/{productId}")
	public String deleteProduct(@PathVariable int productId) throws IOException{
		productDao.deleteProduct(productId);
		return "redirect:/admin/productInventory";
	}
}
