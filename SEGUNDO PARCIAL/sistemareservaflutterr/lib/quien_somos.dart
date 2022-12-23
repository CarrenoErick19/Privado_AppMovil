import 'package:flutter/material.dart';
import 'package:proyectoflutter/main.dart';

class Quienes_somos extends StatefulWidget {
  @override
  State<Quienes_somos> createState() => _Quienes_somosState();
}

class _Quienes_somosState extends State<Quienes_somos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 202, 224, 226),
      body: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.white,
                  blurRadius: 25.0,
                  spreadRadius: 5.0,
                  offset: Offset(15.0, 15.0))
            ],
            color: Color.fromARGB(255, 173, 173, 172),
            borderRadius: BorderRadius.circular(20)),
        margin: EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 50),
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/logomed.png",
                height: 100,
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Somos un grupo médico que vela por la salud de la comunidad universitaria",
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Misión: Satisfacer de manera eficaz y eficiente las necesidades de cuidado de la salud de la comunidad universitaria.",
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Visión: Crear y sostener un sistema integral, que ofrezca un espacio de crecimiento y desarrollo profesional enfocado en la excelencia y calidez en la asistencia al paciente.",
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                child: TextButton(
                  child: Text(
                    "Volver",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => (MainScreen())));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
