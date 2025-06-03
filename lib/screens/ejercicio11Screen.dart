import 'package:flutter/material.dart';

class Ejercicio11 extends StatelessWidget {
  const Ejercicio11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ejercicio 11"),),
      body: Column(
        children: [
          Text("PANTALLA EJERCICIO 11"),
          //BackButton(),//ICONO DE RETROCEDER
          FilledButton(onPressed: ()=>Navigator.pop(context), child: Text("Retroceder"))//PARA CON UN BOTON RETROCEDER
        ],
      ),
    );
  }
}