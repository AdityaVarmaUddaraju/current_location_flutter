import 'package:flutter/material.dart';
import 'package:get_location/getLocation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Get your location'),
        ),
        body: Center(
          child: GetLocation(),
        ),
      )
    );
  }
}