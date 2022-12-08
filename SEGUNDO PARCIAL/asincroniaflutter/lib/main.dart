import 'package:flutter/material.dart';
import 'package:asincroniaflutter/services/mockapi.dart' as async;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //Retirar cinta de debug
      title: 'Carreño Reyes Erick 7mo A',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Autos'),
        ),
        body: Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
