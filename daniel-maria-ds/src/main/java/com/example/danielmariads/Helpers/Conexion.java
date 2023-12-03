package com.example.danielmariads.Helpers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
    public Connection openDb() {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            return DriverManager.getConnection(
                    "jdbc:sqlserver://localhost:1433;encrypt=true;trustServerCertificate=true;databaseName=AEONTECHNOLOGY",
                    "as", "12345");
        } catch (SQLException e) {
        } catch (ClassNotFoundException cnfex) {
        }
        return null;
    }
}
