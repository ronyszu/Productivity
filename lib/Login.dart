import 'package:flutter/material.dart';
import 'package:productivity/button.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        elevation: 10.0,
        title: Text("Login"),
      ),
      body: new Stack(
        children: <Widget>[

          new Container(
              height: 560.0,
              width: 360.0,
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage("assets/icons/fundo.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: new Container(
                padding: new EdgeInsets.all(20.0),
                margin: new EdgeInsets.only(
                  left: 70.0,
                  right: 70.0,
                  top: 150.0,
                  bottom: 200.0,
                ),
                decoration: new BoxDecoration(
                  border:
                      new Border.all(color: Colors.indigoAccent, width: 4.0),
                  color: const Color(0xFF333366),
                  borderRadius: new BorderRadius.circular(10.0),
                  boxShadow: <BoxShadow>[
                    new BoxShadow(
                      color: Colors.black12,
                      blurRadius: 0.0,
                      offset: new Offset(0.0, 5.0),
                    ),
                  ],
                ),
                child: new Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new Text(
                        "Username:",
                        textAlign: TextAlign.start,
                        style: new TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: 20.0,
                        ),
                      ),
                      TextFormField(
                        textAlign: TextAlign.center,
                        //validator: ,
                        style: new TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: 14.0,
                        ),

                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Please enter your Username',
                          hintStyle: new TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                      new Divider(
                        color: Colors.white,
                      ),
                      new Text(
                        "Password:",
                        textAlign: TextAlign.end,
                        style: new TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: 20.0,
                        ),
                      ),
                      TextFormField(
                        textAlign: TextAlign.center,
                        obscureText: true,
                        style: new TextStyle(
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          fontSize: 14.0,
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Please enter your Password',
                          hintStyle: new TextStyle(
                            color: Colors.white,
                            fontFamily: 'Poppins',
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                    ]),
              )),
          new Positioned(
              left: 30.0,
              top: 70.0,
              child: new Image(
                image: new AssetImage("assets/icons/login.png"),
                height: 110.0,
                width: 110.0,
                fit: BoxFit.cover,
                alignment: new Alignment(0.0, -1.0),
              )),


        ],
      ),

      floatingActionButton: new Button("Begin Journey")
    );
  }
}
