import 'package:beltchat/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class UsuariosPage extends StatefulWidget {
  @override
  _UsuariosPageStState createState() => _UsuariosPageStState();
}

class _UsuariosPageStState extends State<UsuariosPage> {
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  final usuarios = [
    Usuario(
        online: true,
        email: 'carlosbelt25@gmai.com',
        nombre: 'Karla Paola',
        uid: '1'),
    Usuario(
        online: true,
        email: 'danielarian@gmai.com',
        nombre: 'Daniela Beltrán',
        uid: '2'),
    Usuario(
        online: true,
        email: 'lilibernal@gmai.com',
        nombre: 'Liliana Bernal',
        uid: '3'),
    Usuario(
        online: true,
        email: 'juancarlos@gmai.com',
        nombre: 'Juan Carlos Beltrán',
        uid: '4')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Carlos Beltrán',
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
          elevation: 1,
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.exit_to_app,
                color: Colors.black54,
              )),
          actions: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 10),
              child: Icon(Icons.check_circle, color: Colors.green[400]),
              //child: Icon(Icons.offline_bolt, color: Colors.red[400]),
            )
          ],
          centerTitle: true,
        ),
        body: SmartRefresher(
          controller: _refreshController,
          enablePullDown: true,
          onRefresh: _cargarUsuarios,
          header: WaterDropHeader(
            complete: Icon(
              Icons.check,
              color: Colors.blue[300],
            ),
            waterDropColor: Colors.blue[400],
          ),
          child: _ListViewUsuarios(),
        ));
  }

  ListView _ListViewUsuarios() {
    return ListView.separated(
        physics: BouncingScrollPhysics(),
        itemBuilder: (_, i) => _usuarioListTile(usuarios[i]),
        separatorBuilder: (_, i) => Divider(),
        itemCount: usuarios.length);
  }

  ListTile _usuarioListTile(Usuario usuario) {
    return ListTile(
      title: Text(usuario.nombre),
      subtitle: Text(usuario.email),
      leading: CircleAvatar(
        child: Text(usuario.nombre.substring(0, 2)),
        backgroundColor: Colors.black,
      ),
      trailing: Container(
        width: 10,
        height: 10,
        decoration: BoxDecoration(
            color: usuario.online ? Colors.green[300] : Colors.red,
            borderRadius: BorderRadius.circular(100)),
      ),
    );
  }

  void _cargarUsuarios() async {
    await Future.delayed(Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }
}
