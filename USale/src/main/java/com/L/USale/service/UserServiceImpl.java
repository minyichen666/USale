package com.L.USale.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.L.USale.dao.UserMapper;
import com.L.USale.entity.User;
import com.L.USale.entity.UserExample;
import com.L.USale.entity.UserExample.Criteria;

@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserMapper userMapper;
	
	@Override
	public User searchUser(String userName, String password) {
		UserExample example = new UserExample();
		Criteria criteria = example.createCriteria();
		criteria.andUserNameEqualTo(userName);
		criteria.andPasswordEqualTo(password);
		List<User> users = userMapper.selectByExample(example);
		if (users.size() == 0) {
			return null;
		}
		return users.get(0);
	}
	
	@Override
	public void updateUser(User user) {
		userMapper.updateByPrimaryKey(user);
	}
	
	@Override
	public void createUser(User user) {
		userMapper.insert(user);
	}
	
	@Override
	public void deleteUser(int id) {
		userMapper.deleteByPrimaryKey(id);
	}
	
	@Override
	public List<User> findByUserName(String userName){
		UserExample example = new UserExample();
		Criteria criteria = example.createCriteria();
		criteria.andUserNameEqualTo(userName);
		return userMapper.selectByExample(example);
	}
}
