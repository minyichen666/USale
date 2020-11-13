package com.L.USale.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.L.USale.entity.Product;
@Service
public interface ProductService {
	
	List<Product> searchProduct(String name, String category);
	
	void updateProduct(Product product);
	
	void createProduct(Product product);
	
	void deleteProduct(int id);
}
