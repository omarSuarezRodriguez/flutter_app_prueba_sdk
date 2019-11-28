import 'package:flutter/material.dart';

class App_4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Controladores y Variables
    String ejercicio = "Decir si el número está entre 0 y 10"
        " o si está entre 11 y 20 o si está entre 21 y 30";
    final miControlador_1 = TextEditingController();

    //TODO el código
    return ListView(
      padding: EdgeInsets.all(20),
      children: <Widget>[
        Text("Prueba"),
        FlatButton(
          onPressed: () {
            showMyDialog(context, ejercicio);
          },
          child: Text(
            "App 4",
            style:
                DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0),
          ),
        ),
        TextFormField(
          controller: miControlador_1,
          decoration: InputDecoration(labelText: "Número"),
        ),
        RaisedButton(
          child: Text("Saber"),
          onPressed: () {
            eventoClickBoton(context, miControlador_1);
          },
        ),
      ],
    );
  } //Fin body

//Métodos
//Evento Click Botón
  void eventoClickBoton(
      BuildContext context, TextEditingController miControlador_1) {
    int num_1 = int.parse(miControlador_1.text);

    if (num_1 >= 0 && num_1 <= 10) {
      String texto = "Está entre 0 y 10, el número es:\n\n";
      showMyDialog(context, texto + num_1.toString());
    } else if (num_1 >= 11 && num_1 <= 20) {
      String texto = "Está entre 11 y 20, el número es:\n\n";
      showMyDialog(context, texto + num_1.toString());
    } else if (num_1 >= 21 && num_1 <= 30) {
      String texto = "Está entre 21 y 30, el número es:\n\n";
      showMyDialog(context, texto + num_1.toString());
    } else {
      showMyDialog(context, "El número no está entre 0 y 30");
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

} //Fin class App_4
