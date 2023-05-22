import 'package:flutter/material.dart';

class CounterFuntionsScreen extends StatefulWidget {
  const CounterFuntionsScreen({super.key});

  @override
  State<CounterFuntionsScreen> createState() => _CounterFuntionsScreenState();
}

class _CounterFuntionsScreenState extends State<CounterFuntionsScreen> {
  //atributos que se cambiar despues entonces la clase debe de ser StatefulWidget
  int counterNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Counter Funtions'),
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    counterNumber = 0;
                  });
                },
                icon: const Icon(Icons.refresh_rounded)),
          ],
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
                counterNumber == 1 ? "Click" : "Clicks",
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.w200),
              )
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomBotton(
              icon: Icons.plus_one_outlined,
              onPressend: () {
                counterNumber++;
                setState(() {});
              },
            ),
            const SizedBox(
              height: 15,
            ),
            CustomBotton(
              icon: Icons.exposure_minus_1_outlined,
              onPressend: () {
                if (counterNumber == 0) return;
                counterNumber--;
                setState(() {});
              },
            ),
            const SizedBox(
              height: 15,
            ),
            CustomBotton(
              icon: Icons.refresh_outlined,
              onPressend: () {
                counterNumber = 0;
                setState(() {});
              },
            ),
          ],
        ));
  }
}

class CustomBotton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressend;

  const CustomBotton({
    super.key,
    required this.icon,
    this.onPressend,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      enableFeedback: true,
      elevation: 20,
      autofocus: true,
      onPressed: onPressend,
      tooltip: "Botones",
      //shape: const StadiumBorder(),
      child: Icon(icon),
    );
  }
}
