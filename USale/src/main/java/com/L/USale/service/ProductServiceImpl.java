package com.L.USale.service;

import java.util.ArrayList;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.L.USale.dao.ProductMapper;
import com.L.USale.entity.Product;
import com.L.USale.entity.ProductExample;
import com.L.USale.entity.ProductExample.Criteria;
@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired 
	ProductMapper productMapper;
	
	@Override
	public List<Product> searchProduct(String name, String category){
		ProductExample example = new ProductExample();
		Criteria criteria = example.createCriteria();
		if(name != null) {
			criteria.andNameLike("%"+name+"%");
		}
		if(category != null) {
			criteria.andCategoryEqualTo(category);
		}
		return productMapper.selectByExample(example);
	}
	
	@Override
	public void updateProduct(Product product) {
		productMapper.updateByPrimaryKey(product);
	}
	
	@Override
	public void createProduct(Product product) {
		productMapper.insert(product);
	}
	
	@Override
	public void deleteProduct(int id) {
		productMapper.deleteByPrimaryKey(id);
	}
}
