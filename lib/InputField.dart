import 'package:flutter/material.dart';


class InputField extends StatelessWidget {

  //validator validator;
  final Color textColor;

  InputField(this.textColor ,/*this.validator*/);

  @override
  Widget build(BuildContext context) {

    return new TextFormField(
      textAlign: TextAlign.center,
      style: new TextStyle(
        color: this.textColor,
        fontFamily: 'Poppins',
        fontSize: 16.0,
      ),

      decoration: InputDecoration(

        border: InputBorder.none,
        hintText: "___________",
        hintStyle: new TextStyle(
          color: this.textColor,
          fontFamily: 'Poppins',
          fontSize: 16.0,
        ),
      ),
      validator: (value) {
        if (value.isEmpty) {
          return 'Please enter some text';
        }
      },


    );
  }
}


class InputStructure extends StatelessWidget {

  final String textValue;


  InputStructure (this.textValue);


  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(textValue + ":", style: new TextStyle(
            color: Colors.white,
            fontFamily: 'Poppins',
            fontSize: 20.0,
          )
          ),
          new Container(
              width: 150.0, child: InputField(Colors.white))
        ]);


  }
}