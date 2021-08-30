import 'package:beltchat/pages/chat_page.dart';
import 'package:beltchat/pages/loading_page.dart';
import 'package:beltchat/pages/login_page.dart';
import 'package:beltchat/pages/register_page.dart';
import 'package:beltchat/pages/usuarios_page.dart';

import 'package:flutter/material.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'usuarios': (_) => UsuariosPage(),
  'chat': (_) => ChatPage(),
  'login': (_) => LoginPage(),
  'register': (_) => RegisterPage(),
  'loading': (_) => LoadingPage(),
};
