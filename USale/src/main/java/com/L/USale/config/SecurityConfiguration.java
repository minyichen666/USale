//package com.L.USale.config;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.context.annotation.Scope;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//
//import com.L.USale.controller.UserController;
//import com.L.USale.entity.UserLoginInfo;
//
//@Configuration
//@EnableWebSecurity
//public class SecurityConfiguration extends WebSecurityConfigurerAdapter {
//
//    @Override
//    protected void configure(HttpSecurity http) throws Exception {
//    	System.out.println(UserController.authenticated);
//    	if(!isAuthenticated()) {
//    		http
//            .authorizeRequests()
//            .antMatchers("/product/search", "/user", "/user/login","/user/signin").permitAll()
//            .anyRequest()
//            .authenticated()
//            .and()
//			   .formLogin()
//			    .loginPage("/user/login");
//    	}else {
//    		http.authorizeRequests().anyRequest().authenticated();
//    	}
//    }
//    
//    public boolean isAuthenticated() {
//    	return UserController.authenticated;
//    }
//}