//list, sets, iterables 
void main(){
  final numbers = [1,2,3,4,5,5,6,7,8,9,9,10];
  print('List of numbers:  $numbers');
  print('size:  ${numbers.length}');
  print('index 0:  ${numbers[0]}');
  //igual que en c#
  print('primer valor:  ${numbers.first}');
  print('ultimo valor:  ${numbers.last}');
  //nos devuelve iterable = (), este elemento 
  //tiene la capacidad de ser iterable
  print('Reverse iterable:  ${numbers.reversed}');  
  print('list de iterables:  ${(numbers.reversed).toList()}');
  //Set no contiene numeros repetidos 
  print('set de iterables:  ${(numbers.reversed).toSet()}');
  
  //igual que en c# -- (int x)
  final numberGreaterThan5 = numbers.where((x){
    return x>5; // > true, < false
  });
  print("> 5: ${numberGreaterThan5.toSet().toList()}");
}