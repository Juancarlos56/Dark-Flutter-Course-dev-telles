//Asersiones 
void main(){
  final cuadrado = Cuadrado(side: -5.5);
  print("Area= ${cuadrado.calculateArea()}");
  
  //cuadrado.side = -5;
  cuadrado.side = -5;
  print('Area ${cuadrado._side}');
  
}

class Cuadrado{
  //para crear variables privadas utilizamos _
  //visible solo dentro de esta clase 
  double _side; // side * side
  
  Cuadrado({required double side})
    //creacion de assert con mensaje de error
    :assert (side >= 0, 'side must be >= 0'),
  _side= side;
  
  double calculateArea() => _side*_side;
  
  double get area{
    return calculateArea();
  }
  
  set side(double value){
    print("setting new value $value");
    if(value<0) throw 'Value must be >=0';
    _side = value;
  }
  
  
  
}