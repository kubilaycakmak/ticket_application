import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';
import 'package:http/io_client.dart';
import 'package:http/http.dart' as http;
import 'package:rpc/rpc.dart';

class AddScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AddScreenState();
  }
}

class AddScreenState extends State<AddScreen> {
  TextEditingController flightCodeController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    var currentColor = Colors.grey[200];
    var iconColors = Colors.indigo;
    return Scaffold(
      backgroundColor: currentColor,
      appBar: AppBar(
        backgroundColor: currentColor,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: iconColors,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.delete, color: iconColors,),
          ),
          IconButton(
            onPressed: (){
              print(flightCodeController.text);
            },
            icon: Icon(Icons.done_outline, color: iconColors,),
          ),
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: 5,
                  horizontal: MediaQuery.of(context).size.height / 15),
              child: TextField(
                controller: flightCodeController,
                autofocus: true,
                decoration: InputDecoration(
                    labelText: "Flight Code",
                    hintText: "TK660",
                    fillColor: Colors.indigo,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.indigo,
                          style: BorderStyle.solid,
                          width: 20.0),
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
