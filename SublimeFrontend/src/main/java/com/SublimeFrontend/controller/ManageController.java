package com.SublimeFrontend.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.Shopy.model.Product;
import com.Shopy.model.Category;
import com.Shopy.model.Supplier;


import com.Shopy.DAO.SupplierDAO;
import com.Shopy.DAO.CategoryDAO;
import com.Shopy.DAO.ProductDAO;

@Controller
public class ManageController {

	@Autowired
	ProductDAO productDAO;
	@Autowired
	SupplierDAO supplierDAO;
	@Autowired
	CategoryDAO categoryDAO;

	
	@RequestMapping("/Product")
	public String reg1(Model model) {
		model.addAttribute("product", new Product());
		model.addAttribute("catlist", categoryDAO.getAllCategory());
		model.addAttribute("prodlist", productDAO.getAllProduct());
		return "Product";

	}
	
	@RequestMapping(value = "/prodReg", method = RequestMethod.POST)
	public String regP(@ModelAttribute("product") Product product, Model model) {
	  productDAO.addProduct(product);
		return "redirect:/Product";

	}
	

	@RequestMapping("/updateProduct/{prodid}")
	public String goToEdit(@PathVariable("prodid") int prodid, Model model) {
		Product obj = productDAO.getSingleProduct(prodid);
		model.addAttribute("catlist", categoryDAO.getAllCategory());
		model.addAttribute("product", obj);
		return "UpdateProduct";
	}
	
	@RequestMapping(value = "/updateProd", method = RequestMethod.POST)
	public String updateS(@ModelAttribute("product") Product product, Model model) {
		productDAO.updateProduct(product);
		return "redirect:/Product";
	}

	@RequestMapping(value = "/deleteProd/{prodid}")
	public String goToDel(@PathVariable("prodid") int prodid, Model model) {
		productDAO.deleteProduct(prodid);
		return "redirect:/Product";
	}


	
	@RequestMapping("/Category")
	public String reg3(Model model) {
		model.addAttribute("category", new Category());
		model.addAttribute("catlist", categoryDAO.getAllCategory());
		return "Category";

	}
	
	@RequestMapping(value = "/catReg", method = RequestMethod.POST)
	public String regC(@ModelAttribute("category") Category category, Model model) {
		categoryDAO.addCategory(category);
		return "redirect:/Category";
	}
	
	@RequestMapping("/catEdit/{categoryId}")
	public String goToEdit1(@PathVariable("categoryId") int categoryId, Model model) {
		Category obj = categoryDAO.getSingleCategory(categoryId);
		model.addAttribute("category", obj);
		return "UpdateCat";
	}
	
	@RequestMapping(value = "/updateCat", method = RequestMethod.POST)
	public String updateC(@ModelAttribute("category") Category category, Model model) {
		categoryDAO.updateCategory(category);
		return "redirect:/Category";
	}
	
	@RequestMapping(value = "/deleteCat/{categoryId}")
	public String goToDel1(@PathVariable("categoryId") int categoryId, Model model) {
		categoryDAO.deleteCategory(categoryId);
		return "redirect:/Category";
	}

	
	@RequestMapping("/Supplier")
	public String reg2(Model model) {
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("suplist", supplierDAO.getAllSupplier());
		return "Supplier";

	}
	
	@RequestMapping(value = "/regSupp", method = RequestMethod.POST)
	public String regS(@ModelAttribute("supplier") Supplier supplier, Model model) {
		supplierDAO.addSupplier(supplier);
		return "redirect:/Supplier";
	}

	@RequestMapping("/supEdit/{supplierid}")
	public String goToEdit2(@PathVariable("supplierid") int supplierid, Model model) {
		Supplier obj = supplierDAO.getSingleSupplier(supplierid);
		model.addAttribute("supplier", obj);
		return "UpdateSupp";
	}
	
	@RequestMapping(value = "/updateSup", method = RequestMethod.POST)
	public String updateS(@ModelAttribute("supplier") Supplier supplier, Model model) {
		supplierDAO.updateSupplier(supplier);
		return "redirect:/Supplier";
	}
	@RequestMapping(value = "/deleteSup/{supplierid}")
	public String goToDel2(@PathVariable("supplierid") int supplierid, Model model) {
		supplierDAO.deleteSupplier(supplierid);
		return "redirect:/Supplier";
	}
	

}
