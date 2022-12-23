import 'package:flutter/material.dart';
import 'package:proyectoflutter/main.dart';
import 'package:proyectoflutter/usuario/cancel_cita.dart';
import 'package:proyectoflutter/usuario/mod_user.dart';
import 'package:proyectoflutter/usuario/sesion_user.dart';

class New_cita extends StatefulWidget {
  @override
  State<New_cita> createState() => _New_citaState();
}

class _New_citaState extends State<New_cita> {
  TextEditingController med1 = new TextEditingController();
  TextEditingController med2 = new TextEditingController();
  TextEditingController fechacita = new TextEditingController();
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
              Text(
                "Formulario para agendar una cita médica:",
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Médicos disponibles:",
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Médico1:",
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              TextField(
                controller: med1,
                decoration: InputDecoration(hintText: "Nombre del Médico 1"),
              ),
              SizedBox(height: 10),
              Text(
                "Médico2:",
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              TextField(
                controller: med2,
                decoration: InputDecoration(hintText: "Nombre del Médico 2"),
              ),
              SizedBox(height: 10),
              Text(
                "Cita disponible para la fecha:",
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              TextField(
                controller: fechacita,
                obscureText: true,
                decoration:
                    InputDecoration(hintText: "Hora y fecha de la cita médica"),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                child: TextButton(
                  child: Text(
                    "Agendar cita",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    //Agendar cita
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => (Sesion_user())));
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                child: TextButton(
                  child: Text(
                    "Cancelar",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => (Sesion_user())));
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
