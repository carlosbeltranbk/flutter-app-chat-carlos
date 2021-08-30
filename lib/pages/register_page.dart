import 'dart:ui';

import 'package:beltchat/widgets/botonAzul.dart';
import 'package:beltchat/widgets/custom_input.dart';
import 'package:beltchat/widgets/labels.dart';
import 'package:beltchat/widgets/logo.dart';
import 'package:flutter/material.dart';
// ignore: implementation_imports

class RegisterPage extends StatelessWidget {
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
                    titulo: 'REGISTRO',
                  ),
                  _Form(),
                  Labels(
                    ruta: 'login',
                    mensaje1: '¿Ya estás registrado?',
                    mensaje2: 'Da clic aquí para iniciar sesión',
                  ),
                  Text(
                    'AppChat developed by Carlos Béltran',
                    style: TextStyle(fontWeight: FontWeight.w200),
                  ),
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
  final nameCtrl = TextEditingController();
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
            icon: Icons.perm_identity_outlined,
            placeholder: 'Nombre de usuario',
            keyboardType: TextInputType.text,
            textController: emailCtrl,
          ),
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
            text: 'Registrarse',
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
