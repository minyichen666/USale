package com.L.USale.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.L.USale.dao.UserMapper;
import com.L.USale.entity.User;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserMapper userMapper;
	
	@Override
	public void updateUser(User user) {
		userMapper.updateByPrimaryKey(user);
	}
}
