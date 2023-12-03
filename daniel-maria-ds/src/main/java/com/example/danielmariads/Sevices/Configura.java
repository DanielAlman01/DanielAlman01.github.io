package com.example.danielmariads.Sevices;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class Configura implements WebMvcConfigurer{
     @Override
  public void addCorsMappings(CorsRegistry cors){
    cors.addMapping("/**").allowedMethods(
      "*"
    );
  }
}
