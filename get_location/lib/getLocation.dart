
import 'package:flutter/material.dart';

import 'package:geolocator/geolocator.dart';
import 'screens/displayCoords.dart';


class GetLocation extends StatefulWidget {
  GetLocation({Key key}) : super(key: key);

  @override
  _GetLocationState createState() => _GetLocationState();
}

class _GetLocationState extends State<GetLocation> {

  double latitude;
  double longitude;

  @override
  Widget build(BuildContext context) {
    return Container(
       child: Center(
         child: latitude == null ?
         RaisedButton(
           onPressed: () async {
            Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
            setState(() {
              latitude = position.latitude;
              longitude = position.longitude;
              print('Latitude is $latitude, Longitude is $longitude');
            });

           },
           child: Text('Get location'),
           ) : DisplayCoordinates(
             lat: latitude,
             long: longitude
           ),
       ),
    );
  }
}