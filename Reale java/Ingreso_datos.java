package com.company;

import java.util.Scanner;

public class Ingreso_datos{
    private int dni;
    private String nombre;
    private String direccion;


    public Ingreso_datos() {
        this.dni = dni;
        this.nombre = nombre;
        this.direccion = direccion;
    }

    public int getDni(){
        return this.dni;
    }
    public void setDni(int dni){
        this.dni = dni;
    }

    public String getNombre(){
        return this.nombre;
    }
    public void setNombre(String nombre){
        this.nombre = nombre;
    }

    public String getDireccion(){
        return this.direccion;
    }
    public void setDireccion(String direccion){
        this.direccion = direccion;
    }
}


