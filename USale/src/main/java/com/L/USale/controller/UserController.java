package com.L.USale.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.L.USale.entity.User;
import com.L.USale.service.UserService;
import com.L.USale.validator.UserValidator;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	UserService userService;
	
    @Autowired
    UserValidator userValidator;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String welcome(ModelMap model) {
        model.put("message", "hello");
        return "welcome";
    }
	
	@RequestMapping(value = "/search", method = RequestMethod.GET)
	@ResponseBody
	public List<User> getUser(@RequestParam(name = "userName", required=true) String userName, @RequestParam(name = "password", required=true) String password) {
		List<User> users = userService.searchUser(userName, password);
		return users;
	}	
	
	@RequestMapping(value = "/update", method = RequestMethod.PUT)
	public boolean updateUser(@RequestBody User user) {
		try {
			userService.updateUser(user);
			return true;
		}catch(Exception e) {
			return false;
		}
	}
	
	@RequestMapping(value = "create", method = RequestMethod.POST)
	public boolean postUser(@RequestBody User user) {
		try {
			if (userValidator.validate(user)) {
				userService.createUser(user);
				return true;
			}
			return false;
		}catch(Exception e) {
			return false;
		}
	}	
	
	@RequestMapping(value = "delete", method = RequestMethod.DELETE)
	public boolean deleteUser(@RequestParam(name = "id", required=true) int id) {
		try {
			userService.deleteUser(id);
			return true;
		}catch(Exception e) {
			return false;
		}
	}	
}
