import 'package:flutter/material.dart';
import 'package:proyectoflutter/admin/sesion_admin.dart';
import 'package:proyectoflutter/main.dart';

class Lista_pacientes extends StatefulWidget {
  @override
  State<Lista_pacientes> createState() => _Lista_pacientesState();
}

class _Lista_pacientesState extends State<Lista_pacientes> {
  TextEditingController nombre = new TextEditingController();
  TextEditingController cedula = new TextEditingController();
  TextEditingController nombre2 = new TextEditingController();
  TextEditingController cedula2 = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 202, 224, 226),
      body: Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black38,
                  blurRadius: 25.0,
                  spreadRadius: 5.0,
                  offset: Offset(15.0, 15.0))
            ],
            color: Color.fromARGB(255, 173, 173, 172),
            borderRadius: BorderRadius.circular(20)),
        margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 50),
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/logomed.png",
                height: 70,
              ),
              Text(
                "Listado de Usuarios Registrados:",
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Paciente 1:",
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              TextField(
                controller: nombre,
                enabled: false,
                decoration: InputDecoration(hintText: "Nombre del paciente 1"),
              ),
              SizedBox(height: 10),
              Text(
                "Cédula:",
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              TextField(
                controller: cedula,
                enabled: false,
                decoration: InputDecoration(hintText: "Cédula del paciente 1"),
              ),
              Text(
                "Paciente 2:",
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              TextField(
                controller: nombre2,
                enabled: false,
                decoration: InputDecoration(hintText: "Nombre del paciente 2"),
              ),
              SizedBox(height: 10),
              Text(
                "Cédula:",
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              TextField(
                controller: cedula2,
                enabled: false,
                decoration: InputDecoration(hintText: "Cédula del paciente 2"),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
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
                        MaterialPageRoute(builder: (_) => (Sesion_admin())));
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 200,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 122, 128, 133),
                    borderRadius: BorderRadius.circular(10)),
                child: TextButton(
                  child: Text(
                    "Salir",
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
