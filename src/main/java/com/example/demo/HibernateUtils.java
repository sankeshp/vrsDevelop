
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
  datasource.setDriverClassName("org.postgresql.Driver");
  datasource.setUrl("jdbc:postgresql://traprhfkkrtqzy:ef078c1b89cae02384d7eeef579119d14fbcfe46957cdf6cc344ef9a5d1a3c87@ec2-54-165-164-38.compute-1.amazonaws.com:5432/d8dngts6l9q7bf");
  datasource.setUsername("traprhfkkrtqzy"); datasource.setPassword("ef078c1b89cae02384d7eeef579119d14fbcfe46957cdf6cc344ef9a5d1a3c87"); return
  datasource; }
  
  @Bean public LocalSessionFactoryBean sessionFactory() {
  LocalSessionFactoryBean sessionFactory=new LocalSessionFactoryBean();
  sessionFactory.setDataSource(datasource());
  sessionFactory.setPackagesToScan("com.example.*"); Properties hibernateProperties=new
  Properties();
  
  
  //hibernateProperties.put("spring.jpa.properties.hibernate.dialect","org.hibernate.dialect.MySQL5InnoDBDialect");
   hibernateProperties.put("hibernate.dialect","org.hibernate.dialect.PostgreSQLDialect");
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
 