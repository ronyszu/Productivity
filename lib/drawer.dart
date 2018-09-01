import 'package:flutter/material.dart';


class DrawerApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new ListView(children: <Widget>[
        new ListTile(
            title: new Text("Página Inicial"),
            trailing: new Icon(Icons.home),
            onTap: () {
              Navigator.pushNamed(context, '/');
            }),
        new Divider(),
        new ListTile(
            title: new Text("Loja"),
            trailing: new Icon(Icons.store),
            onTap: () {
              Navigator.pushNamed(context, '/');
            }),
        new Divider(),
      ]),
    );
  }
}