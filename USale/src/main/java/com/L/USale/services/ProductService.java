package com.L.USale.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.L.USale.dao.ProductMapper;
import com.L.USale.entity.Product;
@Service
public interface ProductService {
	
	List<Product> searchProduct();
}
