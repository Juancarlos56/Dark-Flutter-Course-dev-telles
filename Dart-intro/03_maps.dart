//igual que en java
void main(){
  //Creacion de mapas, llave y valor estructura JSON
  //final con tipado Map<String, dynamic>
  //final con tipado Map<int, dynamic>
  //PUEDE identificr el tipo de dato
  final pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilites': <String>['impostor'],
    'sprites': {
      1: 'ditto/front.png',
      2: 'ditto/back.png'
    }
  };
  
  print(pokemon);
  print('Name: ${pokemon['name']}');
  print('Sprites: ${pokemon['sprites']}');
  //Mi solucion esto me salia error si no denifia como mapa mi lista
  //entonces tenia que especificar el tipo de dato que me devuelve
  //pokemon['sprites'])as Map
  print('front: ${((pokemon['sprites'])as Map)[1]}');
  print('back: ${((pokemon['sprites'])as Map)[2]}');
  //Solucion del curso
  //Esto funciona siempre y cuando se haya definido anteriormente 
  //que el objeto con el que se trabaja ya es de tipo mapa
  final Map<String, dynamic> pokemon2 = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilites': <String>['impostor'],
    'sprites': {
      1: 'ditto/front.png',
      2: 'ditto/back.png'
    }
  };
  print('Sprites: ${pokemon2['sprites'][1]}');
}