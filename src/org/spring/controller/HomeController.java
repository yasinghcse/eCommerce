package org.spring.controller;

import java.io.File;
import java.io.IOException;
import java.lang.reflect.Method;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.management.RuntimeErrorException;
import javax.servlet.http.HttpServletRequest;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@Autowired
	private ProductDao productDao;
	private Path path;

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
	public String addProductPost(@ModelAttribute("product") Product product, HttpServletRequest request){
		productDao.addProduct(product);
		
		MultipartFile productImage= product.getProductImage();
		String rootDirectory = request.getSession().getServletContext().getRealPath("/");
		path = Paths.get(rootDirectory + "//resources//images//" + product.getProductId() + ".png");
		if((productImage != null) && (!productImage.isEmpty())){
			try{
				System.out.println(rootDirectory);
				System.out.println(path);
				productImage.transferTo(new File(path.toString()));
			}
			catch(Exception e){
				e.printStackTrace();
				throw new RuntimeException("Product Image Saving failed",e);
			}
		}
		
		
		return "redirect:/admin/productInventory";
	}
	
	
	@RequestMapping("/admin/productInventory/deleteProduct/{productId}")
	public String deleteProduct(@PathVariable int productId, Model model, HttpServletRequest request ) throws IOException{
		
		String rootDirectory = request.getSession().getServletContext().getRealPath("/");
		path = Paths.get(rootDirectory + "//resources//images//" + productId + ".png");
		if(Files.exists(path)){
			try{
				System.out.println("Deleting at Path = " + path);
				Files.delete(path);
			}
			catch(Exception e){
				e.printStackTrace();
				throw new RuntimeException("Product Image deletion failed",e);
			}
		}
		
		productDao.deleteProduct(productId);
		return "redirect:/admin/productInventory";
	}
}
