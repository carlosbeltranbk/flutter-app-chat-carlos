import 'dart:ui';

import 'package:beltchat/widgets/botonAzul.dart';
import 'package:beltchat/widgets/custom_input.dart';
import 'package:beltchat/widgets/labels.dart';
import 'package:beltchat/widgets/logo.dart';
import 'package:flutter/material.dart';
// ignore: implementation_imports

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(255, 255, 255, 0.9),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Logo(
                    titulo: 'BELTCHAT',
                  ),
                  _Form(),
                  Labels(
                    ruta: 'register',
                    mensaje1: '¿Aún no estás registrado?',
                    mensaje2: '¡Registrate ahora!',
                  ),
                  Text(
                    'AppChat developed by Carlos Béltran',
                    style: TextStyle(fontWeight: FontWeight.w200),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

class _Form extends StatefulWidget {
  @override
  __FormState createState() => __FormState();
}

class __FormState extends State<_Form> {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CustomInput(
            icon: Icons.email_outlined,
            placeholder: 'Correo electrónico',
            keyboardType: TextInputType.emailAddress,
            textController: emailCtrl,
          ),
          CustomInput(
            icon: Icons.lock_outlined,
            placeholder: 'Contraseña',
            textController: passCtrl,
            isPassword: true,
          ),
          // TODO: Crear boton
          BotonAzul(
            text: 'Iniciar Sesión',
            eventOnPress: () {
              print(emailCtrl.text);
              print(passCtrl.text);
            },
          )
        ],
      ),
    );
  }
}
