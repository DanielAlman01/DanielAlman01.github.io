package com.example.danielmariads.Controllers;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.danielmariads.Entities.Contenido;
import com.example.danielmariads.Sevices.AeonTechnologyDb;



@RestController
public class ContenidoController {
    @GetMapping("/contenidos")
    public List<Contenido> TodosLosContenidos(@RequestParam(required = false, defaultValue = "") String id) {
        return new AeonTechnologyDb().ObtenerContenido(id);
    }
    
}
