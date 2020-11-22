package com.L.USale.config;


import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

import com.L.USale.Interceptor.LoginInterceptor;
 
@Configuration
class WebMvcConfigurer extends WebMvcConfigurerAdapter{
     
    @Bean
    public LoginInterceptor getLoginIntercepter() {
        return new LoginInterceptor();
    }
     
    @Override
    public void addInterceptors(InterceptorRegistry registry){
        registry.addInterceptor(getLoginIntercepter())
        .addPathPatterns("/**");      
    }
}