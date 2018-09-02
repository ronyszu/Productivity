import 'package:flutter/material.dart';
import 'package:productivity/InputField.dart';
import 'package:productivity/button.dart';

class UserData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          elevation: 10.0,
          title: Text("User Data"),
        ),
        body: new Stack(children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/icons/fundo.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            child: FormUserData(),
          )
        ]));
  }
}

class FormUserData extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<FormUserData> {
  // Create a global key that will uniquely identify the Form widget and allow
  // us to validate the form
  //
  // Note: This is a GlobalKey<FormState>, not a GlobalKey<MyCustomFormState>!
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey we created above
    return Form(
      key: _formKey,
      child:Container(
        padding: new EdgeInsets.all(20.0),
        margin: new EdgeInsets.only(
          left: 50.0,
          right: 50.0,
          top: 50.0,
          bottom: 110.0,
        ),
      decoration: new BoxDecoration(
        border:
        new Border.all(color: Colors.lightBlueAccent, width: 4.0),
        color: const Color(0xFF333366),
        borderRadius: new BorderRadius.circular(20.0),
        boxShadow: <BoxShadow>[
          new BoxShadow(
            color: Colors.black12,
            blurRadius: 0.0,
            offset: new Offset(0.0, 5.0),
          ),
        ],
      ),

      child:Column(

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          InputStructure('Name'),
          InputStructure('Age'),
          InputStructure('Email'),
          InputStructure('Objective'),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: RaisedButton(
              color: Colors.white,
              textColor: new Color(0xFF333366),

              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState.validate()) {
                  // If the form is valid, we want to show a Snackbar
                  Scaffold
                      .of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));
                }
              },
              child: Text('Submit'),
            ),
          ),

        ],
      ),
      ),



    );

  }
}
