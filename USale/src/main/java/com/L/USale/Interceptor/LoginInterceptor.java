package com.L.USale.Interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.L.USale.controller.UserController;

public class LoginInterceptor implements HandlerInterceptor {
	@Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
		String uri = httpServletRequest.getRequestURI();
		System.out.println(uri);
		System.out.println(UserController.authenticated == false && !uri.equals("/user/login"));
		if(UserController.authenticated == false && !uri.equals("/user/login")) {
        	httpServletResponse.sendRedirect("/user/login");
            return false;
        }
        return true;   
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {
    }
}
