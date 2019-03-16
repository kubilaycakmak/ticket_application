import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AddScreenState();
  }
}

class AddScreenState extends State<AddScreen> {
  TextEditingController flightCodeController = new TextEditingController();
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }

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
            onPressed: () {
              setState(() {
                flightCodeController.text = "";
              });
            },
            icon: Icon(
              Icons.refresh,
              color: iconColors,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.delete,
              color: iconColors,
            ),
          ),
          IconButton(
            onPressed: () {
              print(flightCodeController.text);
            },
            icon: Icon(
              Icons.done_outline,
              color: iconColors,
            ),
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
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: MediaQuery.of(context).size.height / 15),
                child: TextField(
                  controller: flightCodeController,
                  autofocus: true,
                  decoration: InputDecoration(
                      labelText: "From",
                      hintText: "Istanbul",
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
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: MediaQuery.of(context).size.height / 15),
                child: TextField(
                  controller: flightCodeController,
                  autofocus: true,
                  decoration: InputDecoration(
                      labelText: "To",
                      hintText: "New York",
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
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: MediaQuery.of(context).size.height / 15),
                child: TextField(
                  controller: flightCodeController,
                  keyboardType: TextInputType.numberWithOptions(),
                  autofocus: true,
                  decoration: InputDecoration(
                      labelText: "Date",
                      hintText:
                          "${DateTime.now().day} / ${DateTime.now().month} / ${DateTime.now().year}",
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
              Expanded(
                  child: Stack(
                    children: <Widget>[
                      _image == null
                          ? Text(" There is no barcode here.")
                          : Container(
                              child: Image.file(_image),
                              height: MediaQuery.of(context).size.height / 3,
                            ),
                      FlatButton(
                        onPressed: getImage,
                        child: Text("Select"),
                      )
                    ],
                  )),
              // Padding(
              //   padding: EdgeInsets.symmetric(
              //       vertical: 5,
              //       horizontal: MediaQuery.of(context).size.height / 15),
              // child: RaisedButton(
              //   onPressed: (){
              // var route = new MaterialPageRoute(
              //   builder: (BuildContext context) => Browser(value:flightCodeController.text),
              // );
              // Navigator.of(context).push(route);
              //   },
              //   color: iconColors,
              //   child: Text("Find the Flight!", style: TextStyle(color: currentColor),),
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(10.0),
              //     side: BorderSide(
              //       color: Colors.black12,
              //       style: BorderStyle.solid,
              //       width: 3
              //     )
              //   ),
              // )
            ],
          ),
      ),
    );
  }
}
