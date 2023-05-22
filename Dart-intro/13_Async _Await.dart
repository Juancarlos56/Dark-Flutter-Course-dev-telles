//Future 
//tareas asincronas 
void main() async{
  print("Inicio del progrma");
  try{
    final value = await httpGet("http://tranviacuenca.com");
    print(value);
  }catch(error){
    print('Error $error');
  }
  print('Fin de programa')
}

//same to promise 
//metodos asincronos con async 
Future<String> httpGet(String url) async{
  //Espera que el future se realice 
  //await hace que el future sea un metodo sincrono 
  //solo puedo utilizar await con metodos asincronos async
  await Future.delayed(const Duration(seconds: 1));
  return 'Tenemos un valor de peticion';
}