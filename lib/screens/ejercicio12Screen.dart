import 'package:flutter/material.dart';

class Ejercicio12 extends StatelessWidget {
  const Ejercicio12({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ejercicio 12")),
      body: Column(
        children: [
          Text("PANTALLA EJERCICIO 12"),
          ingreso(context),
          FilledButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Retroceder"),
          ),
        ],
      ),
    );
  }
}

Widget ingreso(context) {
  TextEditingController edad = TextEditingController();
  TextEditingController aniosE = TextEditingController();

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
        controller: aniosE,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          label: Text("Ingrese sus años de experiencia"),
        ),
      ),
      Container(height: 10),

      ElevatedButton(
        onPressed: () => mensajeRespuesta(context, aniosE, edad),
        child: Text("VERIFICAR"),
      ),
    ],
  ));
}

String verificar(String aniosES, String edadS) {
  double aniosE = double.parse(aniosES);
  double edad = double.parse(edadS);

  if (edad >= 25 && edad <= 35 && aniosE >= 3) {
    return "El aspirante puede ser seleccionado para una entrevista.";
  } else {
    return "Lo siento, el aspirante no cumple con los requisitos para la entrevista.";
  }
}

void mensajeRespuesta(context, aniosE,edad) {
  String resultado = verificar(aniosE.text, edad.text);

  showDialog(
    context: context,
    builder:
        (context) => AlertDialog(
          title: Text("Confirmación"),
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
