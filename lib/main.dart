// @dart=2.9
import 'package:beltchat/routes/routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BeltChat',
      initialRoute: 'chat',
      routes: appRoutes,
    );
  }
}
