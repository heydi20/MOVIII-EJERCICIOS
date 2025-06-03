import 'package:flutter/material.dart';

class Ejercicio12 extends StatelessWidget {
  const Ejercicio12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ejercicio 12"),),
        body: Column(
          children: [
            Text("PANTALLA EJERCICIO 12"),
            FilledButton(onPressed: ()=>Navigator.pop(context), child: Text("Retroceder"))
          ],
        ),
    );
  }
}