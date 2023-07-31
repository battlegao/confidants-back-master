package com.battlegao.confidant;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;
import springfox.documentation.swagger2.annotations.EnableSwagger2WebMvc;

@SpringBootApplication
@MapperScan("com.battlegao.confidant.mapper")
@EnableScheduling
@EnableSwagger2WebMvc
public class ConfidantApplication {

    public static void main(String[] args) {
        SpringApplication.run(ConfidantApplication.class, args);
    }

}
