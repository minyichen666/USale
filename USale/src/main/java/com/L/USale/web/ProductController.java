package com.L.USale.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.L.USale.entity.Product;
import com.L.USale.services.ProductService;

import org.springframework.web.bind.annotation.ResponseBody;

@RestController
public class ProductController {
	@Autowired
	ProductService productService;
	@RequestMapping(value = "/list-products", method = RequestMethod.POST)
	@ResponseBody
	public List<Product> listProduct() {
		List<Product> products = productService.searchProduct();
		return products;
	}
	
	
	
	
}
