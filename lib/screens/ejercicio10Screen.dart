import 'package:flutter/material.dart';

class Ejercicio10 extends StatelessWidget {
  const Ejercicio10({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ejercicio 10")),
      body: Column(
        children: [
          Text("PANTALLA EJERCICIO 10"),
          //BackButton(),//ICONO DE RETROCEDER
          FilledButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Retroceder"),
          ),
          datos(context), //PARA CON UN BOTON RETROCEDER
        ],
      ),
    );
  }
}

Widget datos(context) {
  TextEditingController edad = TextEditingController();
  TextEditingController nivelI = TextEditingController();
  TextEditingController promedio = TextEditingController();

  return (Column(
    children: [
      TextField(
        controller: edad,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          label: Text("Ingrese su edad"),
        ),
      ),
      Container(height: 10),
      TextField(
        controller: nivelI,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          label: Text("Ingrese su nivel de inglés"),
        ),
      ),
      Container(height: 10),
      TextField(
        controller: promedio,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          label: Text("Ingrese su promedio en notas"),
        ),
      ),
      Container(height: 10),
      ElevatedButton(
        onPressed: () => mensajeRespuesta(context, edad, nivelI, promedio),
        child: Text("VERIFICAR"),
      ),
    ],
  ));
}

String verificar(String edadStr, String nivelI, String promedioStr) {
  int edad = int.parse(edadStr);
  double promedio = double.parse(promedioStr);

  if ((edad > 16 && edad < 25) &&
      (nivelI.toLowerCase() == "intermedio" ||
          nivelI.toLowerCase() == "avanzado") &&
      promedio >= 8) {
    return "El estudiante es apto para participar en el programa de intercambio";
  } else {
    return "Lo siento, el estudiante no cumple con los requisitos para el programa de intercambio";
  }
}

//ALERT
/*void mensajeRespuesta(context,  nivelI,  promedio){
  showDialog(context: context, builder: (context)=>
  AlertDialog(title: Text("Respuesta"),
  content: Text("El estudiante es: $verificar"),
  actions: [FilledButton(onPressed: ()=>Navigator.pop(context), child: Text("Salir"))],));
}*/

void mensajeRespuesta(
   context,
   edad,
   nivelI,
   promedio,
) {
  String resultado = verificar(edad.text, nivelI.text, promedio.text);

  showDialog(
    context: context,
    builder:
        (context) => AlertDialog(
          title: Text("Respuesta"),
          content: Text(resultado),
          actions: [
            FilledButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Salir"),
            ),
          ],
        ),
  );
}
