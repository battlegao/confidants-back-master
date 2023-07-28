package com.battlegao.confidant;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@MapperScan("com.battlegao.confidant.mapper")
@EnableScheduling
public class ConfidantApplication {

    public static void main(String[] args) {
        SpringApplication.run(ConfidantApplication.class, args);
    }

}
