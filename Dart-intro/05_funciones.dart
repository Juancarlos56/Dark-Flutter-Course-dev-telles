//metodos y funciones 
void main(){
  print(greetEveryone());
  print(greetEveryone2());
  print(addTwoNumbers(10,20));
  print(addTwoNumbers2(10,20));
  print(greetPerson(name: "Juan"));
}


//funciones tambien funciona como TS sin especificar 
//el tipo de devolucion, pero tambien como java return tipo 
//de datos que devuelve
String greetEveryone(){
  return "Hello everyone!";
}

//funciones de lamda o funciones de flecha 
// despues de la flecha siempre va con return 
//algun valor 
String greetEveryone2() => "Hello everyone!";

//se puede o no definir el tipo de dato que recibe
//al igual que en java
int addTwoNumbers(int a,int b){
  return a+b;
}

int addTwoNumbers2(int a,int b) => a+b;

//funciones con parametros opciones 
//haciendo del paramtro b como opciones con []
//haciendo que puede ser un numero opcional ?
//[int? b] --> [int b = 0]
//int addTwoNumbers3(int a,[int? b]){
int addTwoNumbers3(int a,[int b = 0]){
  //Primera Solucion verificar si el valor es nulo entonces tomar valor de cero
  // Verifica si el valor tiene un numero
  //b = b ?? 0;
  //Segunda Solucion
  //forma corta 
  //b ??= 0;
  return a + b;
}

//parametros con nombres para orden de parametros
//son opcionales y no tienen definido un orden
//required es parametro obligatorio
//massage = si no se manda tiene un valor por defecto
//edad = puede ser nulo y no tiene valor 
String greetPerson({required String name, String massage = 'Hola, ', int? edad}){
  return '$massage Juan. ${edad??''}';
}