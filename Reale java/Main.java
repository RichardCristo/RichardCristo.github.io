package com.company;

import java.util.Scanner;

class Main{
    public static void main(String[] args) {
        System.out.println("Ingrese un DNI");
        Scanner ingreso1 = new Scanner(System.in);
        int dni = ingreso1.nextInt();

        System.out.println("Ingrese un nombre");
        Scanner ingreso2 = new Scanner(System.in);
        String nombre = ingreso2.nextLine();

        System.out.println("Ingrese una direccion");
        Scanner ingreso3 = new Scanner(System.in);
        String direccion = ingreso3.nextLine();

        Ingreso_datos p1 = new Ingreso_datos();
        p1.setDni(dni);
        System.out.println(p1.getDni());
        p1.setNombre(nombre);
        System.out.println(p1.getNombre());
        p1.setDireccion(direccion);
        System.out.println(p1.getDireccion());

        System.out.println("Queres cambair los datos? (1 si 2 no)");
        Scanner ingreso4 = new Scanner(System.in);
        int dato = ingreso4.nextInt();
        if (dato == 1) {
            System.out.println("Ingrese un DNI");
            Scanner ingreso5 = new Scanner(System.in);
            int dni2 = ingreso5.nextInt();

            System.out.println("Ingrese un nombre");
            Scanner ingreso6 = new Scanner(System.in);
            String nombre2 = ingreso6.nextLine();

            System.out.println("Ingrese una direccion");
            Scanner ingreso7 = new Scanner(System.in);
            String direccion2 = ingreso7.nextLine();
            p1.setDni(dni2);
            System.out.println(p1.getDni());
            p1.setNombre(nombre2);
            System.out.println(p1.getNombre());
            p1.setDireccion(direccion2);
            System.out.println(p1.getDireccion());
        }
        else{
            System.out.println("PAPU LINCE :V");
        }

    }
}