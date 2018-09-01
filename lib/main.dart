import 'package:flutter/material.dart';
//import 'package:productivity/Loja.dart';
import 'package:productivity/Login.dart';
//import 'package:flutter_svg/flutter_svg.dart';
//import 'package:flutter/animation.dart';
import 'package:productivity/drawer.dart';
import 'package:productivity/button.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Named Routes Demo',
    initialRoute: '/',
    routes: {
      '/': (context) => MyApp(),
      '/login': (context) => Login(),
    },
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Producivity App',
      initialRoute: '/',
      home: new MyHomePage(title: 'Productivity'),
      routes: {
        '/login': (context) => Login(),
      },
      theme: new ThemeData(
        primarySwatch: Colors.indigo,
        fontFamily: 'Ubuntu',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    return new Scaffold(
        //   appBar: new AppBar(
        //   elevation: 10.0,
        //  title: new Text(widget.title),
        //),
        body: new Stack(
          children: <Widget>[
            new Container(
                decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: new AssetImage("assets/icons/fundo.jpeg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: new Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      // new PositionedTransition(rect: Animation<RelativeRect>(), child:
                      new Container(
                          height: 180.0,
                          width: 360.0,
                          child: new Image(
                            image: new AssetImage("assets/icons/pins.png"),
                          )),
                new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Button("Login"),
                      new Container(
                        height: 20.0,
                      ),
                      Button("Sign In"),
              ]
                )
                    ]))
          ],
        ),
        drawer: DrawerApp());
  }
}
