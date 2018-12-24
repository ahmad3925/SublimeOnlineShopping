package com.SublimeFrontend.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.Shopy.DAO.OrderDAO;
import com.Shopy.DAO.CartDAO;
import com.Shopy.DAO.CategoryDAO;
import com.Shopy.DAO.ProductDAO;
import com.Shopy.DAO.UserDAO;
import com.Shopy.model.Cart;
import com.Shopy.model.CartLine;
import com.Shopy.model.Order_Item;
import com.Shopy.model.Order_Table;
import com.Shopy.model.Product;
import com.Shopy.model.User;

@Controller
public class Homecontroller {

	@Autowired
	UserDAO userDAO;

	@Autowired
	CartDAO cartDAO;

	@Autowired
	OrderDAO orderDAO;

	
	@Autowired
	ProductDAO productDAO;

	@Autowired
	CategoryDAO categoryDAO;

	@Autowired
	Cart cart;
	
	@RequestMapping("/")
	public String home() {
		return "index";
	}

	@RequestMapping("/NewFile")
	public String NewFile() {
		return "NewFile";
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
		Cart cart = new Cart();

		cart.setEmail(user.getEmail());
		cartDAO.addCart(cart);
		return "index";
	}

	@RequestMapping("/ShowUser")
	public String ShowAll(Model model) {

		List<User> lst = userDAO.getAllUser();
		model.addAttribute("listUser", lst);
		return "ShowUser";
	}

	/*
	 * @RequestMapping(value= "/EditUser/{userid}") public String
	 * goTOEdit(@PathVariable("userid") int userid, Model model) {
	 * 
	 * User obj = userDAO.getSingleUser(userid);
	 * 
	 * model.addAttribute("UpdateUser", obj); return "EditUser"; }
	 */
	@RequestMapping(value = "/EditUser/{userid}")
	public String goTOEditUser(@PathVariable("userid") int userid, Model model) {

		User obj = userDAO.getSingleUser(userid);

		model.addAttribute("UpdateUser", obj);
		return "UserProfile";
	}

	@RequestMapping(value = "/deleteUser/{userid}")
	public String goToDel(@PathVariable("userid") int userid, Model model) {
		userDAO.deleteUser(userid);
		return "redirect:/ShowUser";
	}

	// @RequestMapping(value = "/updateUser", method = RequestMethod.POST)
	// public String updateC(@ModelAttribute("UpdateUser") User user, Model model) {
	// userDAO.updateUser(user);
	// return "redirect:/";
	// }
	//

	@RequestMapping(value = "/updateUser", method = RequestMethod.POST)
	public String updateS(@RequestParam("oldPassword") String oldPassword,
			@RequestParam("newpassword") String newpassword, @ModelAttribute("UpdateUser") User User, Model model,
			HttpSession session) {

		User ob = userDAO.getSingleUser(User.getUserid());
		User.setPassword(newpassword);
		if (oldPassword.equals(ob.getPassword())) {
			userDAO.updateUser(User);
			session.setAttribute("msg1", "Password has been changed successfully!");

		} else {
			session.setAttribute("msg1", "Wrong Password");
		}

		return "redirect:/EditUser/" + User.getUserid();
	}

	@RequestMapping("/ViewProduct")
	public String viewProduct(Model model) {
		return "ViewProduct";
	}

	/*
	 * @RequestMapping("/AllProducts") public String viewAllProduct(Model model) {
	 * return "AllProducts"; }
	 */

	@RequestMapping("/AllProducts")
	public String ViewProducts(Model model) {
		model.addAttribute("prodlist", productDAO.getAllProduct());
		return "AllProducts";
	}

	@RequestMapping("/{prodid}")
	public String View(@PathVariable("prodid") int prodid, Model model) {

		model.addAttribute("product", productDAO.getSingleProduct(prodid));

		return "ViewSingleProduct";
	}

	@RequestMapping("ViewSingleProduct/{prodid}")
	public String ViewSingleProduct(@PathVariable("prodid") int prodid, Model model) {

		Product product = productDAO.getSingleProduct(prodid);
		model.addAttribute("product", product);
		model.addAttribute("category", categoryDAO.getSingleCategory(Integer.parseInt(product.getCategoryId())));
		return "ViewSingleProduct";
	}

	@RequestMapping("/Checkout")
	public String goTOUser(Model model, HttpSession session) {
		User obj = (User) session.getAttribute("user");
		ArrayList<String> states = new ArrayList<String>();

		states.add("Andhra Pradesh");
		states.add("Arunachal Pradesh");
		states.add("Assam");
		states.add("Bihar");
		states.add("Chhattisgarh");
		states.add("Goa");
		states.add("Gujarat");
		states.add("Haryana");
		states.add("Himachal Pradesh");
		states.add("Jammu and Kashmir");
		states.add("Jharkhand");
		states.add("Karnataka");
		states.add("Kerala");
		states.add("Madhya Pradesh");
		states.add("Maharashtra");
		states.add("Manipur");
		states.add("Meghalaya");
		states.add("Mizoram");
		states.add("Nagaland");
		states.add("Odisha");
		states.add("Punjab");
		states.add("Rajasthan");
		states.add("Sikkim");
		states.add("Tamil Nadu");
		states.add("Uttar Pradesh");
		states.add("Uttarakhand");
		states.add("West Bengal");

		model.addAttribute("states", states);
		model.addAttribute("newShop", obj);
		return "Checkout";

	}

}
