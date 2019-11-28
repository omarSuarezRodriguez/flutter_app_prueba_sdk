import 'package:flutter/material.dart';

class App_3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Variables - Controladores
    final miControlador_1 = TextEditingController();
    final miControlador_2 = TextEditingController();
    final String ejercicio = "De dos Números, saber el mayor";

    //TODO el código
    return ListView(
      padding: EdgeInsets.all(20),
      children: <Widget>[
        Text("Hola Mundo 3"),
        FlatButton(
          onPressed: () {
            showMyDialog(context, ejercicio);
          },
          child: Text(
            "App 3",
            style:
                DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0),
          ),
        ),
        TextFormField(
          controller: miControlador_1,
          decoration: InputDecoration(labelText: "Primer Número"),
        ),
        TextFormField(
          controller: miControlador_2,
          decoration: InputDecoration(labelText: "Segundo número"),
        ),
        RaisedButton(
          child: Text("Saber"),
          onPressed: () {
            eventoClickBoton(context, miControlador_1, miControlador_2);
          },
        ),
      ],
    );
  }

//Métodos

//Método 1
//Evento Click Botón
  void eventoClickBoton(
      BuildContext context,
      TextEditingController miControlador_1,
      TextEditingController miControlador_2) {
    int num_1 = int.parse(miControlador_1.text);
    int num_2 = int.parse(miControlador_2.text);

    if (num_1 > num_2) {
      String mayor = "Número mayor: \n\n" + num_1.toString();
      showMyDialog(context, mayor);
    } else {
      String mayor = "Número mayor: \n\n" + num_2.toString();
      showMyDialog(context, mayor);
    }
  } //Fin método eventoClickBoton

//Metodo 2
//Mostrar showDialog
  void showMyDialog(BuildContext context, String texto) {
    showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text(
            texto,
          ),
          actions: <Widget>[
            FlatButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop(true);
              },
            ),
          ],
        );
      },
    );
  } //Fin método showMyDialog

} //Fin class App_3
