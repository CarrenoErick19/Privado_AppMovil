import 'package:flutter/material.dart';
import 'package:proyectoflutter/admin/sesion_admin.dart';
import 'package:proyectoflutter/main.dart';

//Login administrador
class Login_Admin extends StatefulWidget {
  @override
  State<Login_Admin> createState() => _Login_AdminState();
}

class _Login_AdminState extends State<Login_Admin> {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
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
        margin: EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 50),
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/logomed.png",
                height: 160,
              ),
              Text(
                "Administrador, por favor ingrese sus credenciales:",
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Correo institucional:",
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              TextField(
                controller: email,
                decoration: InputDecoration(hintText: "nombreadmin@correo.com"),
              ),
              SizedBox(height: 10),
              Text(
                "Contraseña:",
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              TextField(
                controller: password,
                obscureText: true,
                decoration: InputDecoration(hintText: "Ingrese su contraseña"),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                child: TextButton(
                  child: Text(
                    "Ingresar",
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
