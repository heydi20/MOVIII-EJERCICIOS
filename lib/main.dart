import 'package:app_06/screens/ejercicio10Screen.dart';
import 'package:app_06/screens/ejercicio11Screen.dart';
import 'package:app_06/screens/ejercicio12Screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( EjerciciosApp());
}

class EjerciciosApp extends StatelessWidget {
  const EjerciciosApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Cuerpo(),
    );
  }
}

class Cuerpo extends StatelessWidget {
  const Cuerpo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ejercicios"),
        actions: [IconButton.outlined(onPressed: ()=>mensajeAutor(context), icon: Icon(Icons.propane_tank_outlined))],
      ),
      body: Center(
        child: Column(children: [
          btnEjercicio10(context),
          btnEjercicio11(context),
          btnEjercicio12(context)
        
        ],),
      ),
    );
  }
}

Widget btnEjercicio10(context){
  return(
    FilledButton.tonal(
      onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Ejercicio10())), 
      child: Text("Ejercicio 10"))
  );
}

Widget btnEjercicio11(context){
  return(
    FilledButton.tonal(
      onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Ejercicio11())), 
      child: Text("Ejercicio 11"))
  );
}
Widget btnEjercicio12(context){
  return(
    FilledButton.tonal(
      onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Ejercicio12())), 
      child: Text("Ejercicio 12"))
  );
}

void mensajeAutor(context){
  showDialog(context: context, builder: (context)=>
  AlertDialog(
    title: Text("Creditos"),
    content: Text("Autor: Heydi Herrera"),
  ));
}