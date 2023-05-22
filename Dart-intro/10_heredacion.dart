//clases abstractas y enumeraciones 
//clase abastracta e sun molde para construir otro molde 
//Una clase abstracta no se puede instanciar 
//Herencia de clases 
//Principio de heredacion de dependencias 
//Implements 
void main(){
  final windPlant = WindPlant(initialEnergy: 100);  
  print('wind ${chargePhone(windPlant) }');
  
  final nuclearPlant = NuclearPlant(energyLeft: 20);  
  print('nuclear  ${chargePhone(nuclearPlant) }');
  
  
}

double chargePhone(EnergyPlant plant){
  if(plant.energyLeft < 10){
    throw Exception('Not enough energy');
  }
  return plant.energyLeft - 10;
}

//Enumeracion Enum

enum PlantType{
  nuclear, wind, water
}

//creacion de clase abstracta 
abstract class EnergyPlant{
  //todas las plantas deben tener unos atributos comun 
  double energyLeft; 
  final PlantType type; //nuclear, wind, water
  
  EnergyPlant({
    required this.energyLeft, 
    required this.type
  });
  
  void consumeEnergy(double amount);

}

//extends ---> heradar de otra clase 
//heretodo todo lo que tiene la clase
class WindPlant extends EnergyPlant{
  
  WindPlant({required double initialEnergy})
    :super(energyLeft: initialEnergy, type: PlantType.wind);
  
  @override
  void consumeEnergy(double amount){
    energyLeft -= amount;
  }
}


//implements ---> explicitamente tienes que colocar override
//cuando quiero utilizar un solo metodo de la clase
class NuclearPlant implements EnergyPlant{
  @override
  double energyLeft; 
  
  @override
  final PlantType type = PlantType.nuclear; //nuclear, wind, water
  
  NuclearPlant({required this.energyLeft});
  
  @override
  void consumeEnergy(double amount){
    energyLeft -= amount;
  }
   
}