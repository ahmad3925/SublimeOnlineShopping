package com.ShopyFront.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String home() {
		return "index";
	}

	@RequestMapping("/Home")
	public String Home(Model model) {

		return "/ShopyFront";
	}
	
	@RequestMapping("/Register")
	public String Register(Model model) {
		return "Register";
	}
	
	@RequestMapping("/Supplier")
	public String Register(Model model) {
		return "Supplier";
	}
	
	@RequestMapping("/Category")
	public String Register(Model model) {
		return "Category";
	}

}
