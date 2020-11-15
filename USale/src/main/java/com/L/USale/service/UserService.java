package com.L.USale.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.L.USale.entity.Product;
import com.L.USale.entity.User;
@Service
public interface UserService {
	List<User> searchUser(String userName, String password);
	
	void updateUser(User user);
	
	void createUser(User user);
	
	void deleteUser(int id);
}
