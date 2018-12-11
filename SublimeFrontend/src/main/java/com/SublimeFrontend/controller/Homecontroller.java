package com.SublimeFrontend.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.Shopy.DAO.UserDAO;
import com.Shopy.model.Category;
import com.Shopy.model.User;

@Controller
public class Homecontroller {

	@Autowired
	UserDAO userDAO;

	@RequestMapping("/")
	public String home() {
		return "index";
	}

	@RequestMapping("/Register")
	public String Register(Model model) {
		model.addAttribute("User", new User());
		return "Register";
	}

	public String Register() {
		return "Register";

	}

	@RequestMapping(value = "/regStud", method = RequestMethod.POST)
	public String regStud(@ModelAttribute("User") User user, Model model) {

		user.setRole("ROLE_USER");
		user.setEnable(true);
		userDAO.addUser(user);
		return "index";
	}

	@RequestMapping("/ShowUser")
	public String ShowAll(Model model) {

		List<User> lst = userDAO.getAllUser();
		model.addAttribute("listUser", lst);
		return "ShowUser";
	}

	@RequestMapping(value= "/EditUser/{userid}")
	public String goTOEdit(@PathVariable("userid") int userid, Model model) {

		User obj = userDAO.getSingleUser(userid);

		model.addAttribute("UpdateUser", obj);
		return "EditUser";
	}
	
	@RequestMapping(value = "/deleteUser/{userid}")
	public String goToDel(@PathVariable("userid") int userid, Model model) {
		userDAO.deleteUser(userid);
		return "redirect:/ShowUser";
	}

	@RequestMapping(value = "/updateUser", method = RequestMethod.POST)
	public String updateC(@ModelAttribute("UpdateUser") User user, Model model) {
		userDAO.updateUser(user);
		return "redirect:/ShowUser";
	}
	

	@RequestMapping("/ViewProduct")
	public String viewProduct(Model model) {
		return "ViewProduct";
	}

}
