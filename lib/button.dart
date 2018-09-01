import 'package:flutter/material.dart';


class Button extends StatelessWidget {
  final String text;


  Button(this.text);

  @override
  Widget build(BuildContext context) {
    return new Container(
        margin: new EdgeInsets.only(
          left: 30.0,
          right: 30.0,
        ),
        height: 70.0,
        width: 340.0,
        decoration: new BoxDecoration(
          color: new Color(0xFF333366),
          shape: BoxShape.rectangle,
          borderRadius: new BorderRadius.circular(10.0),
          boxShadow: <BoxShadow>[
            new BoxShadow(
              color: Colors.black12,
              blurRadius: 0.0,
              offset: new Offset(0.0, 5.0),
            ),
          ],
        ),
        child: new Row(children: <Widget>[
          new Container(
              margin: new EdgeInsets.only(
                left: 10.0,
                right: 10.0,
              ),
              height: 70.0,
              width: 280.0,
              child: new Center(
                  child: new RaisedButton(
                      color: new Color(0xFF333366),
                      textColor: Colors.white,
                      child: new Center(
                          child: new Text(
                            this.text,
                            style: new TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                              fontSize: 20.0,
                            ),
                          )),
                      onPressed: () {
                        Navigator.pushNamed(context, '/' + this.text.trim().toLowerCase().toString());
                      })))
        ]));
  }
}