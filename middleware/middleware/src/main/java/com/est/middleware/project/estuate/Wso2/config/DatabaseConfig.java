package com.est.middleware.project.estuate.Wso2.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Component
@Configuration
@ComponentScan
@EnableAutoConfiguration
@EnableTransactionManagement
@PropertySource("classpath:application.properties")
public class DatabaseConfig {

	@Value("${spring.datasource.driver-class-name}")
	private String DB_DRIVER;
	@Value("${spring.datasource.url}")
	private String DB_URL;
	@Value("${spring.datasource.username}")
	private String DB_USERNAME;
	@Value("${spring.datasource.password}")
	private String DB_PASSWORD;
	@Value("${hibernate.dialect}")
	private String HIBERNATE_DIALECT;
	@Value("${hibernate.show_sql}")
	private String HIBERNATE_SHOW_SQL;
	@Value("${hibernate.hbm2ddl.auto}")
	private String HIBERNATE_HBM2DDL_AUTO;
	@Value("${entitymanager.packagesToScan}")
	private String ENTITYMANAGER_PACKAGES_TO_SCAN;
	@Value("${wso2.vm.ip}")
	public String WSO2_VM_IP_AND_PORT;
	@Value("${wso2.basic.auth.name}")
	public String WSO2_BASIC_AUTH_NAME;
	@Value("${wso2.basic.auth.password}")
	public String WSO2_BASIC_AUTH_PASSWORD;

	@Bean
	public LocalSessionFactoryBean sessionFactory() {
		LocalSessionFactoryBean sessionFactoryBean = new LocalSessionFactoryBean();
		sessionFactoryBean.setDataSource(this.estuateDatasource());
		sessionFactoryBean.setPackagesToScan(new String[] { this.ENTITYMANAGER_PACKAGES_TO_SCAN });
		final Properties hibernateProperties = new Properties();
		hibernateProperties.put("hibernate.dialect", this.HIBERNATE_DIALECT);
		hibernateProperties.put("hibernate.show_sql", this.HIBERNATE_SHOW_SQL);
		hibernateProperties.put("hibernate.hbm2ddl.auto", this.HIBERNATE_HBM2DDL_AUTO);
		sessionFactoryBean.setHibernateProperties(hibernateProperties);
		return sessionFactoryBean;
	}
 

	@Bean
	public HibernateTransactionManager transactionManager(DataSource dataSource,LocalSessionFactoryBean localSessionFactory) {
	       HibernateTransactionManager transactionManager = new HibernateTransactionManager();
	       transactionManager.setSessionFactory(localSessionFactory.getObject());
	       transactionManager.setDataSource(dataSource);
	       return transactionManager;
	}
	 
	@Bean
	public DataSource estuateDatasource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName(this.DB_DRIVER);
		dataSource.setUrl(this.DB_URL);
		dataSource.setUsername(this.DB_USERNAME);
		dataSource.setPassword(this.DB_PASSWORD);
		return (DataSource) dataSource;
	}

 

}