import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  //atributos que se cambiar despues entonces la clase debe de ser StatefulWidget
  int counterNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Counter Screen'),
        ),
        //manda al centro el texto
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                counterNumber.toString(),
                style:
                    const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
              ),
              Text(
                counterNumber==1?"Click":"Clicks",
                style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w200),
              )
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            
            //renderizar la pantalla
            /*setState(() {
              counterNumber++;
            });*/

            counterNumber++;
            setState(() { });
          },
          //backgroundColor: Colors.green,
          child: const Icon(Icons.plus_one),
        ));
  }
}
