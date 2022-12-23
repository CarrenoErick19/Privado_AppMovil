import 'package:flutter/material.dart';
import 'package:proyectoflutter/admin/login_admin.dart';
import 'package:proyectoflutter/quien_somos.dart';
import 'package:proyectoflutter/usuario/login_user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}

//Menu pantalla principal
class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
                "Bienvenid@ al sistema de registro de citas medicas",
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Iniciar sesión como:",
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                child: TextButton(
                  child: Text(
                    "Administrador",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => Login_Admin()));
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
                    "Usuario",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => Login_Usuario()));
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
                    color: Color.fromARGB(255, 122, 128, 133),
                    borderRadius: BorderRadius.circular(10)),
                child: TextButton(
                  child: Text(
                    "¿Quiénes somos?",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => Quienes_somos()));
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
