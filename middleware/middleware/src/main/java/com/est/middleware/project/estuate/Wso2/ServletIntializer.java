package com.est.middleware.project.estuate.Wso2;

import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

import com.est.middleware.project.MiddlewareApplication;

public class ServletIntializer {
	public class ServletInitializer extends SpringBootServletInitializer {
		 protected SpringApplicationBuilder configure(final SpringApplicationBuilder application) {
		        return application.sources(new Class[] {  MiddlewareApplication.class });
		    }

	}

}



