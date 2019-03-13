import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var currentColor = Colors.indigo;
    var floatingButtonColor = Colors.white;
    return Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: floatingButtonColor,
          icon: Icon(Icons.add, color: currentColor,),
          onPressed: (){
            Navigator.of(context).pushNamed("/addScreen");
          },
          label: Text("Add a ticket",
          style: TextStyle(
            color: currentColor
          ),),
        ),
        backgroundColor: currentColor,
        appBar: AppBar(
          backgroundColor: currentColor,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            "Home",
            style: TextStyle(
              fontSize: 25.0
            ),
          ),
        ),
      );
  }
  
}