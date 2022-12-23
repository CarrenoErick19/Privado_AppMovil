import 'package:flutter/material.dart';
import 'package:proyectoflutter/admin/login_admin.dart';
import 'package:proyectoflutter/main.dart';

class Sesion_admin extends StatefulWidget {
  @override
  State<Sesion_admin> createState() => _Sesion_adminState();
}

class _Sesion_adminState extends State<Sesion_admin> {
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
                "Usted ha iniciado sesión como: Administrador",
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Elija una opción:",
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                child: TextButton(
                  child: Text(
                    "Ver lista de pacientes",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (_) => (Cita_cancel())));
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
                    "Modificar los datos de un paciente",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (_) => (Mod_usuario())));
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
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                child: TextButton(
                  child: Text(
                    "Regresar",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => (Login_Admin())));
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
