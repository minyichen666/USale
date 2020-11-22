package com.L.USale;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@Configurable
@ComponentScan
@ComponentScan(basePackages = {"USale"})
@EntityScan("com.L.USale.entity")
@EnableJpaRepositories("com.L.USale.dao")
@MapperScan("com.L.USale.dao")
public class USaleApplication {

	public static void main(String[] args) {
		SpringApplication.run(USaleApplication.class, args);
	}

}
