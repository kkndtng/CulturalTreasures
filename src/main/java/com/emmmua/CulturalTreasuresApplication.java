package com.emmmua;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class CulturalTreasuresApplication extends SpringBootServletInitializer{

	public static void main(String[] args) {
		SpringApplication.run(CulturalTreasuresApplication.class, args);
	}
	
	@Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder applicationBuilder) {
        return applicationBuilder.sources(CulturalTreasuresApplication.class);
    }
}
