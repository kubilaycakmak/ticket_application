import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:ticket_application/screens/AddScreen.dart';

class Browser extends StatefulWidget {
  final String value;

  Browser({Key key, this.value}) : super(key:key);
  @override
  State<StatefulWidget> createState() {
    return BrowserState();
  }
}
class BrowserState extends State<Browser> {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: AppBar(
        title: Text("Flight Search"),
        elevation: 0.0,
      ),
      url: 'https://google.com/search?q=${widget.value}',
    );
  }
  
}