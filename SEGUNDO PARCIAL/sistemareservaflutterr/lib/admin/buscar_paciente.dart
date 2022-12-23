import 'package:flutter/material.dart';
import 'package:proyectoflutter/admin/sesion_admin.dart';
import 'package:proyectoflutter/main.dart';
import 'package:proyectoflutter/core/space.dart';
import 'package:proyectoflutter/core/text_style.dart';
import 'package:proyectoflutter/usuario/exito_reg.dart';
import 'package:proyectoflutter/usuario/login_user.dart';
import 'package:proyectoflutter/usuario/mod_exito.dart';
import 'package:proyectoflutter/usuario/sesion_user.dart';
import 'package:proyectoflutter/widget/main_button.dart';
import 'package:proyectoflutter/widget/text_field.dart';

//MODIFICAR DATOS DEL PACIENTE UNA VEZ BUSCADOS
class Buscar_paciente extends StatefulWidget {
  @override
  State<Buscar_paciente> createState() => _Buscar_pacienteState();
}

class _Buscar_pacienteState extends State<Buscar_paciente> {
  TextEditingController userCi = TextEditingController();
  TextEditingController userEmail = TextEditingController();
  TextEditingController userName = TextEditingController();
  TextEditingController userLName = TextEditingController();
  TextEditingController userNacimiento = TextEditingController();
  TextEditingController userCiudad = TextEditingController();
  TextEditingController userPass = TextEditingController();
  TextEditingController userRPass = TextEditingController();
  TextEditingController userDireccion = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 173, 173, 172),
      body: Padding(
        padding: EdgeInsets.only(top: 50.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/logomed.png",
                height: 140,
              ),
              SpaceVH(height: 50.0),
              Text(
                'Modificar los datos del paciente:',
                style: headline1,
              ),
              SpaceVH(height: 60.0),
              textFild(
                controller: userCi,
                image: 'user.svg',
                keyBordType: TextInputType.name,
                hintTxt: 'Modificar cédula de identidad',
              ),
              textFild(
                controller: userEmail,
                keyBordType: TextInputType.emailAddress,
                image: 'user.svg',
                hintTxt: 'Modificar email',
              ),
              textFild(
                controller: userName,
                image: 'user.svg',
                keyBordType: TextInputType.phone,
                hintTxt: 'Modificar nombres',
              ),
              textFild(
                controller: userLName,
                isObs: true,
                image: 'hide.svg',
                hintTxt: 'Modificar apellidos',
              ),
              textFild(
                controller: userNacimiento,
                isObs: true,
                image: 'hide.svg',
                hintTxt: 'Modificar fecha de nacimiento',
              ),
              textFild(
                controller: userPass,
                isObs: true,
                image: 'hide.svg',
                hintTxt: 'Ingrese contraseña',
              ),
              textFild(
                controller: userRPass,
                isObs: true,
                image: 'hide.svg',
                hintTxt: 'Repetir contraseña',
              ),
              textFild(
                controller: userCiudad,
                isObs: true,
                image: 'hide.svg',
                hintTxt: 'Modificar ciudad de residencia',
              ),
              textFild(
                controller: userDireccion,
                isObs: true,
                image: 'hide.svg',
                hintTxt: 'Modificar dirección de domicilio',
              ),
              SpaceVH(height: 80.0),
              Mainbutton(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => (Sesion_admin())));
                },
                text: 'Modificar paciente',
                btnColor: Colors.blue,
              ),
              SpaceVH(height: 20.0),
              Mainbutton(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => (Sesion_admin())));
                },
                text: 'Cancelar',
                btnColor: Colors.blue,
              ),
              SpaceVH(height: 20.0)
            ],
          ),
        ),
      ),
    );
  }
}
