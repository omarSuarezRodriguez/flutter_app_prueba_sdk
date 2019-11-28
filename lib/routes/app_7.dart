import 'package:flutter/material.dart';

class App_7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Variables y constantes
    String ejercicio = "Mostrar los números pares entre el 1 al 100";

    //TODO el código
    return ListView(
      padding: EdgeInsets.all(15),
      children: <Widget>[
        FlatButton(
          onPressed: () {
            showMyDialog(context, ejercicio);
          },
          child: Text("App 7"),
        ),
        RaisedButton(
          onPressed: () {
            eventoClickBoton(context);
          },
          child: Text("Mostrar"),
        ),
      ],
    );
  } //Fin body app

//Metodos

//Metodo 1
//Método eventoClickBoton
  void eventoClickBoton(BuildContext context) {
    String cadena = "Números pares del 1 al 100:\n";

    for (int i = 1; i <= 100; i++) {
      if (i%2 == 0) {
        cadena += i.toString() + " ";
      }
    }

    showMyDialog(context, cadena);

  } //Fin método eventoClickBoton

//Método 2
//Método AlertDialog
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

} //Fin class App_7
