package com.company;

import java.util.Scanner;

import java.util.ArrayList;

public class Main {
    public static void funcion(ArrayList<Producto> lista_productos){
        float precio_aux = 0;
        for(int i = 0; i < lista_productos.size(); i++){
            Producto aux = lista_productos.get(i);
            precio_aux += aux.getPrecio();
        }
        System.out.println("El importe a pagar es: " + precio_aux);
    }
    public static void main(String[] args) {
       boolean dato = true;
        ArrayList<Producto> lista_productos = new ArrayList<>();

        while(dato){
            System.out.println("1.REGISTRO");
            System.out.println("2.IMPORTE PARCIAL A PAGAR");
            System.out.println("3.IMPORTE TOTAL A PAGAR");
            int fufu;
            Scanner ingreso1 = new Scanner(System.in);
            fufu = ingreso1.nextInt();

            Producto p1 = new Producto();

            if(fufu == 1){

                System.out.println("Ingrese le nombre y precio del producto");
                Scanner ingreso2 = new Scanner(System.in);
                String nombre = ingreso2.nextLine();
                Scanner ingreso3 = new Scanner(System.in);
                float precio = ingreso3.nextFloat();

                p1.setNombre(nombre);
                p1.setPrecio(precio);
                lista_productos.add(p1);
            }

            if(fufu == 2){
               funcion(lista_productos);
            }

            if(fufu == 3){
                funcion(lista_productos);
                dato = false;
            }
        }
    }
}
