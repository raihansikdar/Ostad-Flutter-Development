import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AnimatedCameraPage extends StatefulWidget {
   AnimatedCameraPage({Key? key}) : super(key: key);

  @override
  State<AnimatedCameraPage> createState() => _AnimatedCameraPageState();
}

class _AnimatedCameraPageState extends State<AnimatedCameraPage> {

   late final GoogleMapController _googleMapController;

  final Set<Marker>_markers = {
    Marker(
      markerId: const MarkerId("marker-1"),
      position:  const LatLng(23.807895262596844, 90.36067311061),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
      infoWindow: const InfoWindow(title: "road-4"),
    ),
    Marker(
      markerId: const MarkerId("Stadium"),
      position:  const LatLng(23.80741703658476, 90.36311633120935),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
      infoWindow: const InfoWindow(title: "Stadium"),
    ),
    Marker(
      markerId: const MarkerId("Hospital"),
      position:  const LatLng(23.805336050906632, 90.36253697406771),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
      infoWindow: const InfoWindow(title: "Hospital"),
    ),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GoogleMap(
            initialCameraPosition: const CameraPosition(
                target: LatLng(23.807895262596844, 90.36067311061),
                zoom: 16,
            ),
          onMapCreated: (GoogleMapController controller){
              _googleMapController = controller;
          },
          markers: _markers,
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          _googleMapController.animateCamera(CameraUpdate.newCameraPosition(
            const CameraPosition(
              target: LatLng(23.805336050906632, 90.36253697406771),
              zoom: 18,
            ),),
          );
          setState(() {});
        },
        child: const Icon(Icons.my_location),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
