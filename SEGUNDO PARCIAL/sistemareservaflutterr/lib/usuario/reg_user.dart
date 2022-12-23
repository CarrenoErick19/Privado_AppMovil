import 'package:flutter/material.dart';
import 'package:proyectoflutter/main.dart';
import 'package:proyectoflutter/core/space.dart';
import 'package:proyectoflutter/core/text_style.dart';
import 'package:proyectoflutter/usuario/exito_reg.dart';
import 'package:proyectoflutter/usuario/login_user.dart';
import 'package:proyectoflutter/widget/main_button.dart';
import 'package:proyectoflutter/widget/text_field.dart';

class Registro_user extends StatefulWidget {
  @override
  State<Registro_user> createState() => _Registro_userState();
}

class _Registro_userState extends State<Registro_user> {
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
                height: 160,
              ),
              SpaceVH(height: 50.0),
              Text(
                'Estimado usuario, ingrese sus datos:',
                style: headline1,
              ),
              SpaceVH(height: 60.0),
              textFild(
                controller: userCi,
                image: 'user.svg',
                keyBordType: TextInputType.name,
                hintTxt: 'Cedula de identidad',
              ),
              textFild(
                controller: userEmail,
                keyBordType: TextInputType.emailAddress,
                image: 'user.svg',
                hintTxt: 'Email',
              ),
              textFild(
                controller: userName,
                image: 'user.svg',
                keyBordType: TextInputType.phone,
                hintTxt: 'Nombres',
              ),
              textFild(
                controller: userLName,
                isObs: true,
                image: 'hide.svg',
                hintTxt: 'Apellidos',
              ),
              textFild(
                controller: userNacimiento,
                isObs: true,
                image: 'hide.svg',
                hintTxt: 'Fecha de nacimiento',
              ),
              textFild(
                controller: userPass,
                isObs: true,
                image: 'hide.svg',
                hintTxt: 'Ingrese su contraseña',
              ),
              textFild(
                controller: userRPass,
                isObs: true,
                image: 'hide.svg',
                hintTxt: 'Repita la contraseña',
              ),
              textFild(
                controller: userCiudad,
                isObs: true,
                image: 'hide.svg',
                hintTxt: 'Ingrese ciudad de residencia',
              ),
              textFild(
                controller: userDireccion,
                isObs: true,
                image: 'hide.svg',
                hintTxt: 'Ingrese su dirección de domicilio',
              ),
              SpaceVH(height: 80.0),
              Mainbutton(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => (Exito_reguser())));
                },
                text: 'Guardar',
                btnColor: Colors.blue,
              ),
              SpaceVH(height: 20.0),
              Mainbutton(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => (Login_Usuario())));
                },
                text: 'Cancelar',
                btnColor: Colors.blue,
              ),
              SpaceVH(height: 20.0),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: 'Ya tienes una cuenta? ',
                      style: headline.copyWith(
                        fontSize: 14.0,
                      ),
                    ),
                    TextSpan(
                      text: 'Iniciar sesión',
                      style: headlineDot.copyWith(
                        fontSize: 14.0,
                      ),
                    ),
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
