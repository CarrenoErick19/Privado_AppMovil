import 'package:asincronia/services/mockapi.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'obtener_ferrari.dart';
import 'obtener_fisherprice.dart';
import 'obtener_hyundai.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Asincronia con Flutter';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //Retirar cinta de debug
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  double _width = 50;
  double _height = 50;

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  Widget build(BuildContext context) {
    return Material(
        child: Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            ListScreen(),
            Hyundai(),
            FisherPrice(),
          ]),
    ));
  }
}
