//Future 
//tareas asincronas 
//Try, on, catch y finally
void main() async{
  print("Inicio del progrma");
  try{
    final value = await httpGet("http://tranviacuenca.com");
    print('Exito: $value');
  }on Exception catch(error){
      print('Tenemos una exception $error');
  }catch(error){
    print('OPPS!!! algo terrible paso');
  }finally{
    //no importa lo que salga siempre mostrar esto
    print("Fin de try y catch");
  }
  print('Fin de programa');
}

//same to promise 
//metodos asincronos con async 
Future<String> httpGet(String url) async{
  //Espera que el future se realice 
  //await hace que el future sea un metodo sincrono 
  //solo puedo utilizar await con metodos asincronos async
  await Future.delayed(const Duration(seconds: 1));
  throw Exception('No hay parametros en la URL');
  //throw ('Error en la peticion');
  return 'Tenemos un valor de peticion';
}