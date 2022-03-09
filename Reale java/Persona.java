public class Persona {
    private int edad;
    private String nombre;
    private int dni;
    private int telefono;
    private String direccion;

    //constructor por defecto
    public Persona(){
        this.edad = 46;
        this.dni = 46123560;
        this.nombre = "Facundo";
        this.telefono = 1126220409;
        this.direccion = "Nuñez";
    }

    //constructor por string
    public Persona(String nombre){
        this.nombre = nombre;
    }

    public Persona(String nombre, int edad, int dni, int telefono, String direccion){
        this.nombre = nombre;
        this.edad = edad;
        this.dni = dni;
        this.telefono = telefono;
        this.direccion = direccion;
    }

    public String getNombre(){
        return this.nombre;
    }
    public void setNombre(String nombre){
        this.nombre = nombre;
    }

    public int getEdad(){
        return this.edad;
    }
    public void setEdad(int edad){
        this.edad = edad;
    }

    public int getDni(){
        return this.dni;
    }
    public void setDni(int Dni){
        this.dni = Dni;
    }

    public int getTelefono(){
        return this.telefono;
    }
    public void setTelefono(int telefono){
        this.telefono = telefono;
    }

    public String getDireccion(){
        return this.direccion;
    }
    public void setDireccion(String Direccion){
        this.direccion = Direccion;
    }

    public void esMayorDeEdad(Persona p2){

        if(p2.getEdad() >= 18) {
            System.out.println("Es mayor de edad");
        }
        else{
            System.out.println("Es menor de edad");
        }
    }

    public void sonLaMismaPersona(Persona p2){

        if(this.dni == p2.dni){
            System.out.println("Son la misma persona");
        }

        else{
            System.out.println("No son la misma persona");
        }
    }


    public void tienelaMismaEdad(Persona p2, Persona p1){

        if(p1.getEdad() == p2.getEdad()){
            System.out.println("Tienen la misma edad");
        }
        else{
            System.out.println("No tienen la misma edad");
        }
    }
}

 class Main{
    public static void main(String[] args) {
        Persona p1 = new Persona();
        p1.setDni(46123560);
        p1.setEdad(46);
        Persona p2 = new Persona();
        p2.setDni(46123569);
        p2.setEdad(46);

        Persona p3 = new Persona();
        p3.setEdad(16);
        int edad = p3.getEdad();
        int nueva_edad;
        nueva_edad = edad * 2;
        p3.setEdad(nueva_edad);
        Persona p4 = new Persona();
        p4.setTelefono(1126220419);
        int fono = p4.getTelefono();
        int nuevo_telefono;
        nuevo_telefono = fono - 10;
        p4.setTelefono(nuevo_telefono);

        System.out.println(p3.getEdad());
        System.out.println(p4.getTelefono());
        p1.sonLaMismaPersona(p2);
        p2.tienelaMismaEdad(p2,p1);
        p2.esMayorDeEdad(p2);

    }
}

