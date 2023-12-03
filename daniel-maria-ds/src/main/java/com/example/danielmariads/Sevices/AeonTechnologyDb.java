package com.example.danielmariads.Sevices;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.example.danielmariads.Entities.Contenido;
import com.example.danielmariads.Helpers.Conexion;

public class AeonTechnologyDb {
    
    private Connection _cn;

      public AeonTechnologyDb() {
        this._cn = new Conexion().openDb();
    }

          public List<Contenido> ObtenerContenido(String id) {
        try {
             PreparedStatement stmt = _cn.prepareStatement("select * from contenido where SecionID = ?");
            stmt.setString(1, id);
            List<Contenido> contenidos = new ArrayList<>();
            ResultSet result = stmt.executeQuery();
            while (result.next()) {
                 Contenido contenido = new Contenido(
                    result.getString("imagen"),
                    result.getString("titulo"),
                    result.getString("parrafo"));

                contenidos.add(contenido);
            }

            result.close();
            stmt.close();
            return contenidos;
        } catch (Exception e) {
        }
        return null;
    }

}