package com.savvydude.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.savvydude.model.Product;
import com.savvydude.service.CategoryService;
import com.savvydude.service.ProductService;

	@Controller
public class HomeController {
		@Autowired
		private CategoryService categoryService;	

	@Autowired
	private ProductService productService;
		


		
		public HomeController(){
			System.out.println("Creating instance for home controller");
			
		}
		@RequestMapping("/home")
		public String home(HttpSession session) 
		{
			session.setAttribute("categories", categoryService.getCategories());
		return "home";
		}
		@RequestMapping("/aboutus")
		public String aboutUs() 
		{
		return "aboutus";
		}
		@RequestMapping("/contactus")
		public String contactUs() 
		{
		return "contactus";
		}
		
		@RequestMapping("/login")
		public String login(@RequestParam(value="error",required=false) String error,
				@RequestParam(value="logout",required=false) String logout,
				Model model){
			if(error!=null)
				model.addAttribute("error","Invalid UserName or Password.. Please enter valid username and password");
			if(logout!=null)
				model.addAttribute("logout","Loggedout successfully..");
			return "login";
		}
		@RequestMapping("/all/product/productdetails/{id}")
		public String productDetails(@PathVariable int id,Model model){
			Product product=productService.getProductById(id);
			model.addAttribute("product",product);
			model.addAttribute("categories",categoryService.getCategories());
			return "productdetails";
		}
		@RequestMapping("/all/product/AllProducts")
		public String getAllProducts(Model model){
			List<Product> products=productService.getAllProducts();
			//Assigning list of products to model attribute products
			model.addAttribute("productList",products);
			model.addAttribute("categories",categoryService.getCategories());
			return "products";
		}
		@RequestMapping("/all/product/productsByCategories")
		public String getProductsByCategory(@RequestParam(name="searchCondition") String searchCondition,
				Model model){
			List<Product> products=productService.getAllProducts();
				model.addAttribute("productList",products);
			model.addAttribute("searchCondition",searchCondition);
			return "products";
		}
	}