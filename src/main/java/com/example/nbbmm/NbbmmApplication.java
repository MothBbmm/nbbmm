package com.example.nbbmm;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class })
public class NbbmmApplication {

    public static void main(String[] args) {
        SpringApplication.run(NbbmmApplication.class, args);
    }

}
