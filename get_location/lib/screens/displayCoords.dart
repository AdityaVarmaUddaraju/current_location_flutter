import 'package:flutter/material.dart';

class DisplayCoordinates extends StatelessWidget {
  const DisplayCoordinates({Key key, this.lat, this.long}) : super(key: key);

  final double lat;
  final double long;



  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Latitude is $lat'),
          Text('Longitude is $long'),
        ],
      )
    );
  }
}