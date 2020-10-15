package com.example.demo;


import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.orm.jpa.HibernateJpaAutoConfiguration;


@SpringBootApplication(exclude = HibernateJpaAutoConfiguration.class) 
public class VehicleRentalSystemTestApplication 
{
	public static void main(String[] args) 
	{
		SpringApplication.run(VehicleRentalSystemTestApplication.class, args);
	}
}
