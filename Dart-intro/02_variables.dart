//igual que en java
void main(){
  //Tipos de variables dentro de Dart 
  final String pokemon = "Ditto";
  final int hp = 100;
  final bool isAlive = true;
  //? tipo de valor nulo 
   bool? isDead; // valor inicial de isDead = null;
  final abilities = ['impostor']; //de tipo de list<string> 
  //igual como en java
  final abilities2 = <String>['impostor']; //de tipo de list<string> 
  //igual que en java
  final List<String> abilities3 = ['impostor']; //de tipo de list<string> 
  final sprites = <String>['ditto/front.png', 'ditto/back.png'];
  
  //Tipo de datos dinamicos 
  //cualquier tipo de dato: dynamic == null, acepta nulls 
  dynamic errorMessage = "Hola";
  errorMessage = true;
  errorMessage = [1,2,3,4,5];
  errorMessage = {1,2,3,4,5};
  errorMessage = null; 
  
  //Print con multilinea pareceido a c#
  //Igual que en python 
  print("""
    $pokemon
    $hp
    $isAlive
    $abilities
    $abilities2
    $abilities3
    $sprites
    $errorMessage
  """);
  
  
  
}