import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomePage extends StatelessWidget {
   HomePage({Key? key}) : super(key: key);
 late final GoogleMapController _googleMapController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Google Map"),
      ),
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          zoom: 17,
          bearing: 30,
          tilt: 10,
          target: LatLng(23.807013670085013, 90.36125993430448),
        ),
        myLocationEnabled: true,
        myLocationButtonEnabled: true,
        zoomControlsEnabled: true, // false korle +,- button vanish hoye jabe
        zoomGesturesEnabled: true, //false korle zoom in zoom out kora zabe na
        trafficEnabled: true,  // ByDefault false thake. traffic dekha jay
        compassEnabled: true,
        onMapCreated: (GoogleMapController controller){
          debugPrint("on Map crated");
          _googleMapController = controller;
        },
        onTap: (LatLng l){
          debugPrint(l.toString()); //jekhene tab korbo oi jaigar latitude longitude dische
        },
        mapType: MapType.normal, //satellite,hybrid,terrain,none

        markers: <Marker>{
          Marker(
              markerId: const MarkerId("Marker-1"),
              position: const LatLng(23.807911651427602, 90.36002902082949),
              icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
              infoWindow: const InfoWindow(title: "Road 3"), // tap korle name dekhabe
              draggable: true,
              onDragStart: (LatLng latlng){
                debugPrint(latlng.toString());
              },
              onDragEnd: (LatLng latlng){
                debugPrint(latlng.toString());
              },
          ),
          Marker(
            markerId: const MarkerId("Marker-2"),
            position: const LatLng(23.808882012788438, 90.36078913150324),
            icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
            infoWindow: const InfoWindow(title: "Mosque"), // tap korle name dekhabe
            draggable: true,
            onDragStart: (LatLng latlng){
              debugPrint(latlng.toString());
            },
            onDragEnd: (LatLng latlng){
              debugPrint(latlng.toString());
            },
          ),
          Marker(
            markerId: const MarkerId("Marker-3"),
            position: const LatLng(23.807523504852952, 90.36136657992203),
            icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
            infoWindow: const InfoWindow(title: "English"), // tap korle name dekhabe
            draggable: true,
            onDragStart: (LatLng latlng){
              debugPrint(latlng.toString());
            },
            onDragEnd: (LatLng latlng){
              debugPrint(latlng.toString());
            },
          ),
        },

        polylines: <Polyline>{
          Polyline(
              polylineId: const PolylineId("polyline"),
          points: const [
            LatLng(23.807911651427602, 90.36002902082949),
            LatLng(23.808882012788438, 90.36078913150324),
            LatLng(23.807523504852952, 90.36136657992203),
            LatLng(23.807911651427602, 90.36002902082949),
          ],
            color: Colors.red,
            width: 5,
            jointType: JointType.round,
            onTap: (){
                debugPrint("Tap on polylines");
            }
          ),
        },
        circles: <Circle> {
          Circle(
              circleId: CircleId('demo-1'),
              center: LatLng(23.807911651427602, 90.36002902082949),
              radius: 50,
              strokeColor: Colors.purple,
              strokeWidth: 4,
              fillColor: Colors.purple.shade100,
              onTap: () {
                print('Tapped on circle');
              }
          ),
          Circle(
              circleId: CircleId('demo-2'),
              center: LatLng(23.808882012788438, 90.36078913150324),
              radius: 50,
              strokeColor: Colors.purple,
              strokeWidth: 4,
              fillColor: Colors.purple.shade100,
              onTap: () {
                print('Tapped on circle');
              }
          ),
          Circle(
              circleId: CircleId('demo-3'),
              center:  LatLng(23.807523504852952, 90.36136657992203),
              radius: 50,
              strokeColor: Colors.purple,
              strokeWidth: 4,
              fillColor: Colors.purple.shade100,
              onTap: () {
                print('Tapped on circle');
              }
          ),
        },
        polygons: <Polygon> {
          Polygon(polygonId: PolygonId('poly-id'),
              fillColor: Colors.purple.shade400,
              strokeWidth: 0,
              onTap: () {
              },
              points: const [
                LatLng(23.807959618464295, 90.35969856354536),
                LatLng(23.807525545657914, 90.35953001046492),
                LatLng(23.808016733199228, 90.36021046549337),
                LatLng(23.808542187581896, 90.35989833015921),
                LatLng(23.807411315730878, 90.35869973047609),
               // LatLng(23.8072399706519, 90.35934272926445),
              ]
          )
        },
      ),
    );
  }
}
