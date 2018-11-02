package com.jk;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ImportResource;

@SpringBootApplication
@ImportResource(value = {"classpath:springboot-*.xml"})
public class ShopOenbApplication {

    public static void main(String[] args) {
        SpringApplication.run(ShopOenbApplication.class, args);
    }
}
