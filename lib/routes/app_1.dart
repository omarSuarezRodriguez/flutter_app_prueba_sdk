import 'package:flutter/material.dart';

class App_1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Variables de objetos
    //O mejor conocidos como controladores
    final miControlador_1 = TextEditingController();
    final miControlador_2 = TextEditingController();

    //TODO el codigo
    return ListView(
      padding: EdgeInsets.all(20),
      children: <Widget>[
        Text(
          "App 1",
          textAlign: TextAlign.center,
          style: descTextStyle,
        ),
        TextFormField(
          controller: miControlador_1,
          decoration: InputDecoration(labelText: 'Ingrese el primer número'),
        ),
        TextFormField(
          controller: miControlador_2,
          decoration: InputDecoration(labelText: 'Ingrese el segundo número'),
        ),
        RaisedButton(
          child: Text("Calcular"),
          onPressed: () {
            eventoClickBoton(context, miControlador_1, miControlador_2);
//            int num_1 = int.parse(miControlador_1.text);
//            int num_2 = int.parse(miControlador_2.text);
//            int resultado = num_1 + num_2;
//            showMyDialog(context, resultado.toString());
          },
        ),
      ],
    );
  }

  //Metodos

  //Metodo 1
  //Metodo Click Boton
  void eventoClickBoton(
      BuildContext context,
      TextEditingController miControlador_1,
      TextEditingController miControlador_2) {
    int num_1 = int.parse(miControlador_1.text);
    int num_2 = int.parse(miControlador_2.text);
    int resultado = num_1 + num_2;
    showMyDialog(context, resultado.toString());
  }

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
  }

  //Metodo 3
  //Estilo de letra
  final descTextStyle = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.w800,
    fontFamily: 'Roboto',
    letterSpacing: 0.5,
    fontSize: 18,
    height: 2,
  );
}

//Código comentareado:

//TextField Normal:
//
//TextField(
//decoration: InputDecoration(
////            border: InputBorder.none,
//hintText: 'Please enter a search term'),
//),

//TextField con ayuda o TextFormField
//
//TextFormField(
//decoration: InputDecoration(
//labelText: 'Enter your Username',
//),
//),
