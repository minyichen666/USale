package com.L.USale.config;

import java.util.concurrent.Executor;
import java.util.concurrent.ThreadPoolExecutor;
 
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;

@Configuration
public class ThreadPoolConfig {
	
	
	@Bean(name = "threadPoolTaskExecutor")
	public Executor taskExecutor() {
		ThreadPoolTaskExecutor executor = new ThreadPoolTaskExecutor();
		executor.setCorePoolSize(5);
		executor.setMaxPoolSize(10);
		executor.setQueueCapacity(200);
		executor.setKeepAliveSeconds(60);
		executor.setThreadNamePrefix("threadpool-");
		executor.setRejectedExecutionHandler(new ThreadPoolExecutor.CallerRunsPolicy());
		return executor;
	}

}