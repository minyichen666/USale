package com.L.USale.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
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
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	@ResponseBody
	public List<Product> listProduct(@RequestParam(name = "name", required=false) String name, @RequestParam(name = "category", required=false) String category) {
		List<Product> products = productService.searchProduct(name, category);
		return products;
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.PUT)
	public boolean updateProduct(@RequestBody Product product) {
		try {
			productService.updateProduct(product);
			return true;
		}catch(Exception e) {
			return false;
		}
	}
	
	@RequestMapping(value = "create", method = RequestMethod.POST)
	public boolean postProduct(@RequestBody Product product) {
		 try {
			 productService.createProduct(product);
			 return true;
		 }catch(Exception e) {
			 return false;
		 }
	}
	
	@RequestMapping(value = "delete", method = RequestMethod.DELETE)
	public boolean deleteProduct(@RequestParam(name = "id", required=true) int id) {
		try { 
			productService.deleteProduct(id);
			return true;
		}catch(Exception e) {
			return false;
		}
	}
	
	
	
	
	
}