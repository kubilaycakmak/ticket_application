import 'package:flutter/material.dart';
import 'screens/AddScreen.dart';
import 'screens/HomeScreen.dart';
import 'screens/Browser.dart';
void main()=> runApp(Home());

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ticket App",
      routes: <String, WidgetBuilder>{
        '/addScreen': (BuildContext context) => AddScreen(),
        '/browser':(BuildContext context) => Browser(),
      },
      home: HomeScreen()
    );
  }
}
