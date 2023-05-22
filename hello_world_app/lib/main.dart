import 'package:flutter/material.dart';
import 'package:hello_world_app/presentation/screens/counter/counter_funtions_screens.dart';
import 'package:hello_world_app/presentation/screens/counter/counter_screen.dart';

void main() {
  //print('Hola Mundo');
  //Configuracion de pagina principal
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //creacion de llave dentro widget 
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //quitando etiqueta de desarrollo
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color.fromARGB(255, 211, 40, 40)
      ),
      //Scaffold agregamos fondo blanco o negro segun tema de celular
      //creacion de pantallas
      //home: const CounterScreen()
      home: const CounterFuntionsScreen()
    );
  }
}
