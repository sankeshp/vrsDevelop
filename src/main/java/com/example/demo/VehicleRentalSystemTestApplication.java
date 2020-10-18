package com.example.demo;


import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.orm.jpa.HibernateJpaAutoConfiguration;
import org.springframework.boot.autoconfigure.web.servlet.error.ErrorMvcAutoConfiguration;


@SpringBootApplication(exclude = {HibernateJpaAutoConfiguration.class,ErrorMvcAutoConfiguration.class}) 
public class VehicleRentalSystemTestApplication 
{
	public static void main(String[] args) 
	{
		SpringApplication.run(VehicleRentalSystemTestApplication.class, args);
	}
}
