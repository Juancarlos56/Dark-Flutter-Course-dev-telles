//Future 
//tareas asincronas 
void main(){
  print("Inicio del progrma");
  httpGet("http://tranviacuenca.com").then(
    (value){
      print(value);
    }
  ).catchError((error){
    print('Error: $error');
  });
  print("Fin del Programa");
}

//same to promise 
Future<String> httpGet(String url){
  return Future.delayed(const Duration(seconds: 1), (){
    throw 'Error en la peticion http';  
    return 'Respuesta de la peticion http';
  });
}