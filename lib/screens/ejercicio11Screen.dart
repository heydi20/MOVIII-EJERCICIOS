import 'package:flutter/material.dart';

class Ejercicio11 extends StatelessWidget {
  const Ejercicio11({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ejercicio 11")),
      body: Column(
        children: [
          Text("PANTALLA EJERCICIO 11"),
          //BackButton(),//ICONO DE RETROCEDER
           //PARA CON UN BOTON RETROCEDER
          datos2(context),
          FilledButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Retroceder"),
          ),
        ],
      ),
    );
  }
}

Widget datos2(context) {
  TextEditingController ingresoM = TextEditingController();
  TextEditingController promedio = TextEditingController();

  return (Column(
    children: [
      TextField(
        controller: promedio,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          label: Text("Ingrese su promedio en notas"),
        ),
      ),
      Container(height: 10),
      TextField(
        controller: ingresoM,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          label: Text("Ingrese su ingreso mensual"),
        ),
      ),
      Container(height: 10),

      ElevatedButton(
        onPressed: () => mensajeRespuesta(context, ingresoM, promedio),
        child: Text("VERIFICAR"),
      ),
    ],
  ));
}

String verificar(String ingresoMS, String promedioS) {
  double ingresoM=double.parse(ingresoMS);
  double promedio = double.parse(promedioS);

  if (promedio > 9 && ingresoM<3000){
    return "El estudiante es elegible para la beca";
  } else {
    return "Lo siento, el estudiante no es elegible para la beca";
  }
}

void mensajeRespuesta(context, promedio,ingresoM) {
  String resultado = verificar(promedio.text, ingresoM.text);

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
