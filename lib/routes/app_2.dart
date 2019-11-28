import 'package:flutter/material.dart';

class App_2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Variables de objetos
    final miControlador_1 = TextEditingController();
    final miControlador_2 = TextEditingController();

    //TODO el código
    return ListView(
      padding: EdgeInsets.all(20),
      children: <Widget>[
        Text("Prueba, App 2",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, color: Colors.blue)),
        TextFormField(
            controller: miControlador_1,
            decoration: InputDecoration(labelText: "Precio Producto")),
        TextFormField(
            controller: miControlador_2,
            decoration: InputDecoration(labelText: "Iva del producto")),
        RaisedButton(
            child: Text("Calcular"),
            onPressed: () {
              eventoCickBoton(context, miControlador_1, miControlador_2);
            }),
      ],
    );
  }

  //Metodos

  //Metodo 1
  //Metodo Boton
  void eventoCickBoton(
      BuildContext context,
      TextEditingController miControlador_1,
      TextEditingController miControlador_2) {
    double num_1 = double.parse(miControlador_1.text);
    double num_2 = double.parse(miControlador_2.text);
//    String cadena = num_1.toString();
    double productoConIva = (num_1 * (num_2 / 100)) + num_1;
    double ivaProducto = num_1 * (num_2 / 100);
    String cadena =
        ("Resultado:\n\nProducto con Iva: " + productoConIva.toString());
    cadena += ("\nIva del Producto: " + ivaProducto.toString());

    showMyDialog(context, cadena);
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

} //Fin class App_2
