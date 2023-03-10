/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.microsvctwo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@SpringBootApplication
public class Microsvctwo {
    
    @RequestMapping("/")
    String home(){

     return "HELLO FROM MICRO SERVICE 2";
    }
    
    public static void main(String[] args) {
        SpringApplication.run(Microsvctwo.class,args);
    }
}
