package com.example.rest;

import java.util.Properties;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class App {
  public static final Properties myProps = new Properties();

  public static void main(String[] args) {
    // Set properties
    myProps.setProperty("server.address", "localhost");
    myProps.setProperty("server.port", "8080");

    SpringApplication app = new SpringApplication(App.class);
    app.setDefaultProperties(myProps);
    app.run(args);
  }
}
