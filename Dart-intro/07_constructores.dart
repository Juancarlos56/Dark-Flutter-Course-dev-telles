//Constructores por nombre 
//Multiples constructores igual que en java 

void main(){
  final iron = Hero(name: 'Tony', power: 'Volar', isAlive: false);
  print('${iron.name} -- ${iron.power} -- ${iron.isAlive ? 'YES': 'No'}');

  //simulando una peticion web get 
  final Map<String, dynamic> rawJson = {
    'name': 'Tony S.',
    'power': 'Money',
    'isAlive': true
  };
  final ironman = Hero.fromJson(rawJson);
  print('${ironman.name} -- ${ironman.power} -- ${ironman.isAlive ? 'YES': 'No'}');
}


class Hero{
  String name;
  String power; 
  bool isAlive; 
  
  Hero({
    required this.name,
    required this.power,
    required this.isAlive
  });
  
  //Metodo constructor alterno cuando quiero pasar
  //un objeto de tipo json a tipo Hero
  /*Hero.fromJson(Map<String, dynamic> json)({
     return Hero();
  });*/
  
  Hero.fromJson(Map<String, dynamic> json)
    : name  = json['name']??'No name found',
      power = json['power']??'No power found',
      isAlive = json['isAlive']??'No isAlive found';
  
  
}