package com.L.USale.controller;

import java.util.List;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.L.USale.entity.Product;
import com.L.USale.entity.User;
import com.L.USale.entity.UserLogin;
import com.L.USale.entity.UserLoginInfo;
import com.L.USale.model.UserModel;
import com.L.USale.service.AsyncTransaction;
import com.L.USale.service.ProductService;
import com.L.USale.service.UserService;
import com.L.USale.validator.UserValidator;

@Controller
@RequestMapping("/user")
@Scope("session")
public class UserController {
	
	@Autowired
	UserService userService;
	
	@Autowired
	ProductService productService;
	
    @Autowired
    UserValidator userValidator;
    
    @Autowired
    UserLoginInfo session;
    
    @Autowired
    AsyncTransaction async;
    
    public static boolean authenticated = false;
	
	@RequestMapping (value = "/login", method = RequestMethod.GET)
	public String searchUser(Model model) {
		UserLogin userLogin = new UserLogin();
		model.addAttribute("userLogin", userLogin);
		return "login";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String searchUser(@ModelAttribute("userLogin") UserLogin userLogin) {
		User user = userService.searchUser(userLogin.getUserName(), userLogin.getPassword());
		if(null != user) {
			session.setUser(new UserModel(user));
			authenticated = true;
			return "redirect:/product/search";
		}
		return "login";
	}
	
	@RequestMapping(value="/update", method = RequestMethod.GET)
	public String updateUser(Model model) {
		User user = new User();
		model.addAttribute("user", session.getUser());
		return "update";
	}	
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updateUser(@ModelAttribute("user") User user, @RequestParam(name = "id") int id) {
		user.setId(id);
		System.out.println(user);
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
				return "redirect:/login";
			}
			else {
				model.addAttribute("message", "Username is taken. Try another one.");
				return "signup";					
			}
	}
	
	@RequestMapping(value = "/account", method = RequestMethod.GET)
	public String displayInfo(Model model) {
		model.addAttribute("Info", session.getUser());
		return "account";
	}
	
	@RequestMapping(value = "/my-products", method = RequestMethod.GET)
	public String listProduct(Model model) {
		if (session.getUser() != null) {
			List<Product> productList = productService.listProduct(session.getUser().getId());
			model.addAttribute("productList", productList);
			return "my-products";
		}
		return "login";
	}
	
	@RequestMapping(value = "/update-product", method = RequestMethod.GET)
	public String updateProduct(Model model) {
		Product product = new Product();
		model.addAttribute("product", product);
		return "update-product";
	}	
	
	@RequestMapping(value = "/update-product", method = RequestMethod.PUT)
	public String updateProduct(@ModelAttribute("product") Product product) {
			productService.updateProduct(product);
			return "my-products";
	}
	
	@RequestMapping(value = "create-product", method = RequestMethod.GET)
	public String addProduct(Model model) {
		Product product = new Product();
		model.addAttribute("product", product);
		model.addAttribute("user", session.getUser());
		return "create-product";
	}
	
	@RequestMapping(value = "create-product", method = RequestMethod.POST)
	public String addProduct(@ModelAttribute("product") Product product) {
			 productService.createProduct(product);
			 return "my-products";
	}
	
	@RequestMapping(value = "delete-product", method = RequestMethod.DELETE)
	public String deleteProduct(@RequestParam(name = "id", required=true) int id) {
			productService.deleteProduct(id);
			return "my-products";
	}
	
	@RequestMapping(value = "/buy-product", method = RequestMethod.GET)
	public String buyProduct(@RequestParam(name = "id", required=true) int id, Model model) {
		try {
			async.buyProduct(session.getUser().getId(), id);
			model.addAttribute("message", "transaction successed");
		}catch(InterruptedException e) {
			model.addAttribute("error", "transaction failed");
		}catch(Exception e) {
			model.addAttribute("error", e.toString());
		}
		List<Product> products = productService.searchProduct(null , null);
		model.addAttribute("products", products);
		return "item_listing";
	}
}
