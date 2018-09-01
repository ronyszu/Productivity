import 'package:flutter/material.dart';
import 'package:productivity/ItemCategory.dart';

class Loja extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text("Loja"),
      ),

      body:new ListView(
        children: <Widget>
        [/*new ItemBar("Loja"),*/
          new ItemCategory("Comida"),
          new ItemCategory("Lazer"),
          new ItemCategory("Estudos"),
          new ItemCategory("Saude"),

        ],
      ),
    );
  }
}