package com.klef.jfsd.springboot;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

import com.klef.jfsd.springboot.repository.StockRepository;

@SpringBootApplication
@ComponentScan(basePackages ="com.klef.jfsd.springboot")
public class StockManagementStockMvcApplication {

	public static void main(String[] args) {
		SpringApplication.run(StockManagementStockMvcApplication.class, args);
		System.out.println("This is Stock Management System in Springboot MVC CRUD Operations");
		}

	
    
	
		
	

}
