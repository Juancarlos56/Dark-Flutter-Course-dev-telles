abstract class Animal{
  
}

abstract class Mamifero extends Animal {
  
}

abstract class Ave extends Animal {
  
}

abstract class Pez extends Animal {
  
}


abstract mixin class Volador {
  void volar() => print("Estoy Volando");
}

abstract mixin class Caminante {
  void caminar() => print("Estoy Caminando");
}

abstract mixin  class Nadador {
  void nadar() => print("Estoy Nadando");
}



//creacion de Mixins 

class Delfin extends Mamifero with Nadador{}
class Murcielago extends Mamifero with Volador,Caminante {}
class Gato extends Mamifero with Caminante{}

class Paloma extends Ave with Volador, Caminante{}
class Pato extends Ave with Volador,Caminante,Nadador{}

class Tiburon extends Pez with Nadador{}
class PezVolador extends Pez with Volador, Nadador{}

//Void main 
void main(){
  final flipper = Delfin();
  flipper.nadar();
  
  final batman = Murcielago();
  batman.caminar();
  batman.volar();
  
  final pato = Pato();
  pato.nadar();
  pato.volar();
  pato.caminar();
}