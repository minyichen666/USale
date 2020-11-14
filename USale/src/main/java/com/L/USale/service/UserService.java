package com.L.USale.service;

import org.springframework.stereotype.Service;

import com.L.USale.entity.User;
@Service
public interface UserService {
	void updateUser(User user);
}
