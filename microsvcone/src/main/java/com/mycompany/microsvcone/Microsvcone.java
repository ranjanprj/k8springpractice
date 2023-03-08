/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.microsvcone;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@SpringBootApplication
public class Microsvcone {
    
    @RequestMapping("/")
    String home(){
        return "hello world there";
    }
    
    public static void main(String[] args) {
        SpringApplication.run(Microsvcone.class,args);
    }
}
