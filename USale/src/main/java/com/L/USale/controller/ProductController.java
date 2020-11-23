package com.L.USale.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.L.USale.entity.Product;
import com.L.USale.service.ProductService;

import org.springframework.web.bind.annotation.ResponseBody;

@RestController
@RequestMapping("/product")
public class ProductController {
	@Autowired
	ProductService productService;
	
	@RequestMapping (value = "/search", method = RequestMethod.GET)
	@ResponseBody
	public String listProduct (@RequestParam(name = "name", required=false) String name, @RequestParam(name = "category", required=false) String category, Model model) {
		List<Product> products = productService.searchProduct(name, category);
		model.addAttribute("products", products);
		return "search";
	}
	
	

	
}