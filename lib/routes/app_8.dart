import 'package:flutter/material.dart';
import 'dart:math';

class App_8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Variables y Controladores
    String ejercicio = "Juego de adivinar número:\n\nGeneramos un número del 1 "
        "al 100, Tenemos que adivinar, si fallamos nos dirá si es mayor "
        "o menor, también mostrar el número de intentos requeridos";
    final miControlador_1 =
        TextEditingController(); //Controlador de TextFormField
    var rgn = new Random(); //Objeto random
    int aleatorio = rgn.nextInt(100); //Número aleatorio
    //int contador = 0; //Contador de intentos
    final data = Data(counter: 0); //Objeto data con counter en 0

    //TODO el código
    return ListView(
      padding: EdgeInsets.all(15),
      children: <Widget>[
        FlatButton(
          onPressed: () {
            showMyDialog(context, ejercicio);
          },
          child: Text("App 8"),
        ),
        TextFormField(
          controller: miControlador_1,
          decoration: InputDecoration(labelText: "Número"),
        ),
        RaisedButton(
          onPressed: () {
            eventoClickBoton(context, miControlador_1, aleatorio, data);
          },
          child: Text("Adivinar"),
        ),
      ],
    );
  } //Fin body app

//Métodos

//Método 1
//Método eventoClickBoton
  void eventoClickBoton(BuildContext context,
      TextEditingController miControlador_1, int aleatorio, Data data) {
    int num = int.parse(miControlador_1.text);

    //Comparo los valores
    if (num == aleatorio) {
      String texto = "Has ganado!, Nro Intentos:\n" +
          data.counter.toString(); //Muestro con data.counter
      showMyDialog(context, texto);
    } else if (num > aleatorio) {
      showMyDialog(context, "El número es menor\n\n" + aleatorio.toString());
      data.counter += 1; //Le sumo 1 al contador
    } else if (num < aleatorio) {
      data.counter += 1; //Le sumo 1 al contador
      showMyDialog(context, "El número es mayor\n\n" + aleatorio.toString());
    }
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

} //Fin class App_8

//Método 3
//Data
//Clase para objetos con data
class Data {
//  String text;
  int counter;

//  String dateTime;

  Data({this.counter});
}
