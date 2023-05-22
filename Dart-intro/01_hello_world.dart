//No retorna ningun valor 
//al igual que en java
void main(){
  //creacion de varaibles, identifica el tipo de dato
  var myName = "Juan Carlos";
  //DEFINICION de tipos de variables de tipo string
  String myLastName = " Barrera Barrera";
  //Final -- Una vez establecido el valor no hay como modificar 
  final myDireccion = "Paute";
  //myDireccion = "Cuenca"; 
  // Late final === Delegacion posterior, es como definir una 
  // variable que va a ser utilizada posteriormente en el codigo 
  late final codigoPostal; 
  //Cons permite crear una constamte en tiempo de ejecucion de construccion de aplicacion  
  //Si se que este valor nueva va a cambiar a lo largo de mi codigo 
  //esto permite obtener mayor velocidad de carga
  const fechaDeNacimiento = "20/07/1998";
  //Pero si se necesita calcular un valor en algun momento utilizar final 
  codigoPostal = "010606";
  
  //Interpolacion de String
  print("Hola $myName");
  //same typescript 
  print("Hola ${myLastName.toUpperCase()}");
  
}