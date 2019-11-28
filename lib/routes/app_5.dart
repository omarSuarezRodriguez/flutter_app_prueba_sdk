import 'package:flutter/material.dart';

class App_5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Variables y controladores
    String ejercicio = "Mostrar un while con los números del 1 al 100";

    //TODO el código
    return ListView(
      padding: EdgeInsets.all(20),
      children: <Widget>[
//        Text("Prueba"),
        FlatButton(
          onPressed: () {
            showMyDialog(context, ejercicio);
          },
          child: Text(
            "App 5",
            style:
                DefaultTextStyle.of(context).style.apply(fontSizeFactor: 2.0),
          ),
        ),
        RaisedButton(
          onPressed: () {
            eventoClickBoton(context);
          },
          child: Text(
            "Mostrar",
            style:
                DefaultTextStyle.of(context).style.apply(fontSizeFactor: 1.5),
          ),
        ),
      ],
    );
  } //Fin Body

//Métodos

//Método 1
//Método evento click botón
  void eventoClickBoton(BuildContext context) {
//    showMyDialog(context, "Pueba");

    int i = 1;
    String cadena = "";
    while (i <= 100) {
      cadena += i.toString() + " ";
      i++;
    }
    showMyDialog(context, cadena);

  } //Fin Método eventoClickBoton

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

} //Fin class App_5
