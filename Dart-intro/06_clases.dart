//Clase en Dart 

void main(){
  //Instanciar una clase (new es opcional)
  //final Hero wolverine = new Hero('Logan', 'Regeneracion');
  //final wolverine = Hero('Logan', 'Regeneracion');
  final wolverine = Hero(name: 'Logan', power: 'Regeneracion');
  
  print('${wolverine.name} -- ${wolverine.power} -- ${(wolverine.edad??='')}');
}

//Creacion de clases 
//definicion igual que en python 
class Hero{
  //Atributos igual que en java 
  //Parametros Opciones: ?
  String? edad; 
  String name; 
  String power; 
  
  //Constructor tipo java dentro de dart no inicializa
  //los parametros 
  /*Hero(String pName, String pPower){
    //this es opcional dart interpreta esto por si solo
    this.name = pName;
    this.power = pPower;
  }*/
  
  //Constructor para iniciar parametros al momento de 
  //instanciar una clase
  //Hero(this.name, this.power); 
  
  //hacer opciones y ordenar por nombre al momento de instanciar una clase
  Hero({
    required this.name,
    required this.power,
    this.edad = 'Sin edad'
  });
}