package com.L.USale.controller;

import java.util.List;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.L.USale.entity.Product;
import com.L.USale.entity.User;
import com.L.USale.entity.UserLogin;
import com.L.USale.entity.UserLoginInfo;
import com.L.USale.service.ProductService;
import com.L.USale.service.UserService;
import com.L.USale.validator.UserValidator;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	UserService userService;
	
	@Autowired
	ProductService productService;
	
    @Autowired
    UserValidator userValidator;
    
    @Autowired
    UserLoginInfo session;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String welcome(ModelMap model) {
        model.put("message", "hello");
        return "welcome";
    }
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String searchUser(Model model) {
		UserLogin userLogin = new UserLogin();
		model.addAttribute("userLogin", userLogin);
		return "login";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String searchUser(@ModelAttribute("userLogin") UserLogin userLogin, Model model) {
		User user = userService.searchUser(userLogin.getUserName(), userLogin.getPassword());
		if(null != user) {
			session.setUser(user);
			return "homepage";
		}
		model.addAttribute("message", "username or password incorrect.");
		return "login";
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.PUT)
	public String updateUser(@ModelAttribute("user") User user) {			
		userService.updateUser(user);
		return "account";
	}
	
	@RequestMapping(value="/signup", method = RequestMethod.GET)
	public String createUser(Model model) {
		User user = new User();
		model.addAttribute("user", user);
		return "signup";
	}
	
	@RequestMapping(value = "/signup", method = RequestMethod.POST)
	public String createUser(@ModelAttribute("user") User user, Model model) {
			if (userValidator.validate(user)) {
				userService.createUser(user);
				model.addAttribute("message", "Sign Up Successfully!");
				return "login";
			}
			else {
				model.addAttribute("message", "Username is taken. Try another one.");
				return "signup";
			}
	}	
	
	@RequestMapping(value = "delete", method = RequestMethod.DELETE)
	public String deleteUser(@RequestParam(name = "id", required=true) int id) {
			userService.deleteUser(id);
			return "login";
	}	
	
	@RequestMapping(value = "/update-product", method = RequestMethod.PUT)
	public boolean updateProduct(@RequestBody Product product) {
		try {
			productService.updateProduct(product);
			return true;
		}catch(Exception e) {
			return false;
		}
	}
	
	@RequestMapping(value = "create-product", method = RequestMethod.POST)
	public boolean postProduct(@RequestBody Product product) {
		 try {
			 productService.createProduct(product);
			 return true;
		 }catch(Exception e) {
			 return false;
		 }
	}
	
	@RequestMapping(value = "delete-product", method = RequestMethod.DELETE)
	public boolean deleteProduct(@RequestParam(name = "id", required=true) int id) {
		try { 
			productService.deleteProduct(id);
			return true;
		}catch(Exception e) {
			return false;
		}
	}
}
