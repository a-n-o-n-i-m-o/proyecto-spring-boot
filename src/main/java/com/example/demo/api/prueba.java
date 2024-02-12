package com.example.demo.api;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;



@RestController
public class prueba {
    @GetMapping("/")
    public persona getAPI() {
        persona p = new persona();
        p.setNombre("a");
        p.setApellido("b");
        p.setEdad(2);
        return p;
    }
}
