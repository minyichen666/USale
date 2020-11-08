package com.L.USale.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.L.USale.dao.ProductMapper;
import com.L.USale.entity.Product;
import com.L.USale.entity.ProductExample;
import com.L.USale.entity.ProductExample.Criteria;

public class ProductServiceImpl implements ProductService {
	
	@Autowired 
	ProductMapper productMapper;
	@Override
	public List<Product> searchProduct(){
		ProductExample example = new ProductExample();
		Criteria criteria = example.createCriteria();
		return selectByExample(example);
	}
}
