package com.company;

import java.until.Scanner;

public class Producto{
    private String nombre;
    private float precio;

    public Producto(){
        this.nombre = nombre;
        this.precio = precio;
    }

    public String getNombre(){
        return this.nombre;
    }
    public float getPrecio(){
        return this.precio;
    }

    public void setNombre(String nombre){
        this.nombre = nombre;
    }
    public void setPrecio(float precio){
        this.precio = precio;
    }
}

public class Main {
    public static void main(String[] args) {
        System.out.println("1.REGISTRO");
        System.out.println("2.IMPORTE PARCIAL A PAGAR");
        System.out.println("3.IMPORTE TOTAL A PAGAR");
        Scanner ingreso1 = new Scanner(System.in);
        int dato = ingeso.nextInt();
        
        while(dato == 1 || dato == 2 || dato == 3){
            if(dato == 1){
                System.out.println("jaja");
            }
            if(dato == 2){
                System.out.println("jeje");
            }
            if(dato == 3){
                System.out.println("jiji");
            }
        }
    }
}
