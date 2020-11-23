package com.L.USale.service;

import org.springframework.stereotype.Service;

import com.L.USale.entity.Product;
import com.L.USale.entity.User;
@Service
public interface AsyncTransaction {
	
	public void buyProduct(int userId, int productId) throws InterruptedException, Exception;
	
}
