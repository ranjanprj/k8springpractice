/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.mf;

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
        // String uri = "http://m2-svc.default.svc.cluster.local:8888";
        // uri = "http://m2-svc:8888";
        RestTemplate restTemplate = new RestTemplate();
    
        String ms1Response = restTemplate.getForObject("http://m1-svc:8888", String.class);
        String ms2Response = restTemplate.getForObject("http://m2-svc:8888", String.class);
    
        return "HELLO FROM MICRO SERVICE FRONT FROM MS  " + ms1Response + " + " + ms2Response ;
       
    }
    
    public static void main(String[] args) {
        SpringApplication.run(Microsvcfront.class,args);
    }
}
