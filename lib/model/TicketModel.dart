import 'package:flutter/material.dart';

class TicketModel extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
      child: Stack(
        children: <Widget>[
          ticketCard,
          ticketIcon
        ],
      ),
    );
  }
}
final ticketCard = new Container(
  height: 124.0,
  margin: EdgeInsets.only(left: 46),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(8.0),
    shape: BoxShape.rectangle,
    boxShadow: <BoxShadow>[
      BoxShadow(
        color: Colors.black12,
        blurRadius: 10.0,
        offset: Offset(0.0, 10.0)
      ),
    ]
  ),
);
final ticketIcon = new Container(
);