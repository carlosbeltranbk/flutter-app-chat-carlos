import 'package:flutter/material.dart';

class Labels extends StatelessWidget {
  final String ruta;
  final String mensaje1;
  final String mensaje2;

  const Labels(
      {Key? key,
      required this.ruta,
      required this.mensaje1,
      required this.mensaje2})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              this.mensaje1,
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 15,
                  fontWeight: FontWeight.w300),
            ),
            SizedBox(height: 10),
            GestureDetector(
              child: Text(
                this.mensaje2,
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              onTap: () {
                Navigator.pushReplacementNamed(context, this.ruta);
              },
            )
          ],
        ),
      ),
    );
  }
}
