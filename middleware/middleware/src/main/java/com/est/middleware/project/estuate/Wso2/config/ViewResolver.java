package com.est.middleware.project.estuate.Wso2.config;

 
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

 
public class ViewResolver implements WebMvcConfigurer 
{
  @Override
  public void addViewControllers(final ViewControllerRegistry registry)	
  {
	   registry.addViewController("/").setViewName("index");
  }

}
