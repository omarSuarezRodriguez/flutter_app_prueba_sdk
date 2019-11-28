import 'package:flutter/material.dart';
import 'home.dart';


void main() => runApp(Aplication());


class Aplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Navigation Drawer',
        home: Home(),
        theme: ThemeData(
            primaryColor: Color(0xFF2196F3),
            accentColor: Color(0xFFFDD303)
        )
    );
  }

}








































//Ir a otra pantalla
//import 'package:flutter/material.dart';
//
//void main() {
//  runApp(MaterialApp(
//    title: 'Returning Data',
//    home: HomeScreen(),
//  ));
//}
//
//class HomeScreen extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Returning Data Demo'),
//      ),
//      body: Center(child: SelectionButton()),
//    );
//  }
//}
//
//class SelectionButton extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return RaisedButton(
//      onPressed: () {
//        _navigateAndDisplaySelection(context);
//      },
//      child: Text('Pick an option, any option!'),
//    );
//  }
//
//  // Un método que inicia SelectionScreen y espera por el resultado de
//  // Navigator.pop!
//  _navigateAndDisplaySelection(BuildContext context) async {
//    // Navigator.push devuelve un Future que se completará después de que llamemos
//    // Navigator.pop en la pantalla de selección!
//    final result = await Navigator.push(
//      context,
//      MaterialPageRoute(builder: (context) => SelectionScreen()),
//    );
//
//    // Después de que la pantalla de selección devuelva un resultado,
//    // oculta cualquier snackbar previo y muestra el nuevo resultado.
//    Scaffold.of(context)
//      ..removeCurrentSnackBar()
//      ..showSnackBar(SnackBar(content: Text("$result")));
//  }
//}
//
//class SelectionScreen extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('Pick an option'),
//      ),
//      body: Center(
//        child: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Padding(
//              padding: const EdgeInsets.all(8.0),
//              child: RaisedButton(
//                onPressed: () {
//                  // Cierra la pantalla y regresa "Yep!" como el resultado
//                  Navigator.pop(context, 'Yep!');
//                },
//                child: Text('Yep!'),
//              ),
//            ),
//            Padding(
//              padding: const EdgeInsets.all(8.0),
//              child: RaisedButton(
//                onPressed: () {
//                  // Cierra la pantalla y regresa "Nope!" como el resultado
//                  Navigator.pop(context, 'Nope.');
//                },
//                child: Text('Nope.'),
//              ),
//            )
//          ],
//        ),
//      ),
//    );
//  }
//}

