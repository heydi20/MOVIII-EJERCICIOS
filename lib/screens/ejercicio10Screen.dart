import 'package:flutter/material.dart';

class Ejercicio10 extends StatelessWidget {
  const Ejercicio10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ejercicio 10"),),
      body: Column(
        children: [
          Text("PANTALLA EJERCICIO 10"),
          //BackButton(),//ICONO DE RETROCEDER
          FilledButton(onPressed: ()=>Navigator.pop(context), child: Text("Retroceder"))//PARA CON UN BOTON RETROCEDER
        ],
      ),
    );
  }
}