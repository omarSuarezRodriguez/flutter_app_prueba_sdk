import 'package:flutter/material.dart';

class App_6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Variables y Controladores
    String ejercicio = "Mostrar con un for los números del 1 al 100";

    //TODO el código
    return ListView(
      padding: EdgeInsets.all(15),
      children: <Widget>[
        FlatButton(
          onPressed: () {
            showMyDialog(context, ejercicio);
          },
          child: Text("App 6"),
        ),
        RaisedButton(
          onPressed: () {
            eventoClickBoton(context);
          },
          child: Text("Mostrar"),
        ),
      ],
    );
  } //Fin Body

//Metodos

//Metodo 1
//Método eventoClickBoton
  void eventoClickBoton(BuildContext context) {
    String cadena = "";

    for (int i = 1; i <= 100; i++) {
      cadena += i.toString() + " ";
    }

    showMyDialog(context, cadena);
  } // Fin Método eventoClickBoton

//Método 2
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

} //Fin class App_6
