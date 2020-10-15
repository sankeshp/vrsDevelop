
  package com.example.demo;
  
  import java.util.Properties;
  
  import javax.sql.DataSource;
  
  import org.springframework.context.annotation.Bean; 
  import org.springframework.context.annotation.Configuration; import
  org.springframework.jdbc.datasource.DriverManagerDataSource; import
  org.springframework.orm.hibernate5.HibernateTransactionManager; import
  org.springframework.orm.hibernate5.LocalSessionFactoryBean; import
  org.springframework.transaction.annotation.EnableTransactionManagement;
  
  @Configuration
  @EnableTransactionManagement 
  public class HibernateUtils {
  
	  public HibernateUtils() {
			System.out.println("In HibernateUtils");
		}
	  
	  
  @Bean public DataSource datasource() { DriverManagerDataSource datasource=new
  DriverManagerDataSource();
  datasource.setDriverClassName("com.mysql.cj.jdbc.Driver");
  datasource.setUrl("jdbc:mysql://localhost:3306/vrs");
  datasource.setUsername("root"); datasource.setPassword("root"); return
  datasource; }
  
  @Bean public LocalSessionFactoryBean sessionFactory() {
  LocalSessionFactoryBean sessionFactory=new LocalSessionFactoryBean();
  sessionFactory.setDataSource(datasource());
  sessionFactory.setPackagesToScan("com.example.*"); Properties hibernateProperties=new
  Properties();
  
  
  //hibernateProperties.put("spring.jpa.properties.hibernate.dialect","org.hibernate.dialect.MySQL5InnoDBDialect");
   hibernateProperties.put("hibernate.dialect","org.hibernate.dialect.MySQL5InnoDBDialect");
  //hibernateProperties.put("spring.jpa.show-sql","true");
  //hibernateProperties.put("spring.jpa.hibernate.ddl-auto","update");
  hibernateProperties.put("hibernate.hbm2ddl.auto","update");
	 
  sessionFactory.setHibernateProperties(hibernateProperties); return
  sessionFactory; }
  
  @Bean public HibernateTransactionManager transactionManager() {
  HibernateTransactionManager transactionManager=new
  HibernateTransactionManager();
  transactionManager.setSessionFactory(sessionFactory().getObject()); return
  transactionManager;
  
  }
  
  
  
  
  }
 