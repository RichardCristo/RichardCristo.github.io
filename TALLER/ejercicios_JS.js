 
//a. cantApariciones: recibe un arreglo de números A y un número N y devuelve la cantidad de veces que N está en A.

//b. posibleMailValido: recibe un string y devuelve true si existe el caracter @ en una posición que no sea ni la primera ni la última.

//c. posibleTelefonoValido: recibe un string de la pinta “01143235687” y devuelve true si empieza con 011 o con 11 y tiene exactamente 8 digitos después.

//a
let A =[1,2,3];
let N=[2];
for(let i = 0; i < A.length; i++){
    if(A[i] == N[0]){
     console.log("N esta una vez en A");
    }
    else{
        console.log("N no esta en A");
    }
}

//b
let caracter = 'a@b';
for(let i = 0; i < caracter.length; i++){
    if(caracter[i] == '@'){
        if(caracter[0] == '@' && caracter[caracter.length-1] == '@'){
            return false;
    }
    else{
        return true;
    }
  }
}

//c
let numero = '01143235687';
for(let i = 0; i < numero.length; i++){
    if(numero[0] == 0 || numero[0] == 1){
        if(numero[1] == 1){
            if(numero[2] == 1){
                return true;
            }
        }
    }
}