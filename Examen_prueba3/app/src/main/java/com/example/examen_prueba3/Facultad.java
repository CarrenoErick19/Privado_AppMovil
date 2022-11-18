package com.example.examen_prueba3;

import com.google.firebase.database.IgnoreExtraProperties;

@IgnoreExtraProperties
public class Facultad {
    private String nombre;
    private String creditos;
    private String metodologia;

    public Facultad() {
    }

    public Facultad(String nombre, String creditos, String metodologia) {
        this.nombre = nombre;
        this.creditos = creditos;
        this.metodologia = metodologia;
    }

    public String getNombre() {
        return nombre;
    }

    public String getCreditos() {
        return creditos;
    }

    public String getMetodologia() {
        return metodologia;
    }
}
