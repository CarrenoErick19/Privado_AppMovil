import 'dart:async';
import 'dart:ffi';
import 'dart:math';

import 'package:asincronia/services/mockapi.dart';
import 'package:flutter/material.dart';

class FisherPrice extends StatefulWidget {
  const FisherPrice({Key? key}) : super(key: key);

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<FisherPrice> {
  double _width = 0;
  int resultado = 0;
  bool _textoActivo = false;
  Color _color = Colors.redAccent;
  bool _isExpanded = false;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Ink(
              width: 90,
              height: 90,
              decoration: const ShapeDecoration(
                color: Color.fromARGB(255, 221, 24, 24),
                shape: CircleBorder(),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.directions_walk,
                  color: Color.fromARGB(255, 47, 37, 37),
                  size: 50.0,
                ),
                color: Colors.white,
                onPressed: () async {
                  _toggleExpand();
                  resultado = await MockApi().getFisherPriceInteger() as int;
                  refresh();
                  await Future.delayed(Duration(seconds: 10));

                  _textoActivo = true;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(""),
            ),
            AnimatedContainer(
              width: _isExpanded ? _width : _width,
              height: 15,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 179, 57, 57),
              ),
              duration: Duration(seconds: _isExpanded ? 10 : 0),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(""),
            ),
            Text(
              '${result().toString()}',
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Color.fromARGB(255, 172, 54, 54)),
            ),
          ],
        ));
  }

  refresh() {
    setState(() {
      _width = 0;
      _isExpanded = false;
    });
  }

  _toggleExpand() {
    setState(() {
      _isExpanded = !_isExpanded;
      _width = 350;
    });
  }

  result() {
    return resultado;
  }
}
