package com.L.USale.validator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.L.USale.entity.User;
import com.L.USale.service.UserService;

@Component
public class UserValidator{
	@Autowired
	UserService userService;

    public boolean validate(User user) {
    	if (userService.findByUsername(user.getUserName()).size() == 0) {
    		return true;
    	}
    	return false;
    }
    
}
