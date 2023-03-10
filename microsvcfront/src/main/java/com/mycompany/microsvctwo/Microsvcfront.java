/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.microsvcfront;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
@SpringBootApplication
public class Microsvcfront {
    
    @RequestMapping("/")
    String home(){
        String uri = "http://microsvctwo-svc.default.svc.cluster.local:8888";
        RestTemplate restTemplate = new RestTemplate();
    
        String response = restTemplate.getForObject(uri, String.class);
    
        return "HELLO FROM MICRO SERVICE FRONT " + response ;
       
    }
    
    public static void main(String[] args) {
        SpringApplication.run(Microsvcfront.class,args);
    }
}
