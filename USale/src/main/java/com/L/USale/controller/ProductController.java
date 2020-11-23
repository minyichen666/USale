package com.L.USale.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.L.USale.entity.Product;
import com.L.USale.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	@Autowired
	ProductService productService;
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String listProduct(@RequestParam(name = "name", required=false) String name, @RequestParam(name = "category", required=false) String category, Model model) {
		List<Product> products = productService.searchProduct(name , category);
		model.addAttribute("products", products);
		return "item_listing";
	}
	
	

	
}