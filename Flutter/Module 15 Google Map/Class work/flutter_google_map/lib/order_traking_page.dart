import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';


class OrderTrackingPage extends StatefulWidget {
  const OrderTrackingPage({Key? key}) : super(key: key);
  @override
  State<OrderTrackingPage> createState() => OrderTrackingPageState();
}
class OrderTrackingPageState extends State<OrderTrackingPage> {
  final Completer<GoogleMapController> _controller = Completer();
  static const LatLng sourceLocation = LatLng(23.806983693160213, 90.36119340736451);
  static const LatLng destination = LatLng(23.805679042598015, 90.36018666814516);


  List<LatLng> polylineCoordinates = [];
  void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      "AIzaSyB7w8JhkAHJJkhweXYfp7w_28JRYI6o8zg", // Your Google Map Key
      PointLatLng(sourceLocation.latitude, sourceLocation.longitude),
      PointLatLng(destination.latitude, destination.longitude),
    );
    if (result.points.isNotEmpty) {
      result.points.forEach(
            (PointLatLng point) =>
            polylineCoordinates.add(
              LatLng(point.latitude, point.longitude),
            ),
      );
      setState(() {});
    }
  }



  LocationData? currentLocation;
  void getCurrentLocation() async {
    Location location = Location();
    location.getLocation().then(
          (location) {
        currentLocation = location;
      },
    );
    GoogleMapController googleMapController = await _controller.future;
    location.onLocationChanged.listen(
          (newLoc) {
        currentLocation = newLoc;
        googleMapController.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
              zoom: 13.5,
              target: LatLng(
                newLoc.latitude!,
                newLoc.longitude!,
              ),
            ),
          ),
        );
        setState(() {});
      },
    );
  }





  @override
  void initState() {
    getPolyPoints();
    getCurrentLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:currentLocation == null
          ? const Center(child: Text("Loading"))
          : GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(
              currentLocation!.latitude!, currentLocation!.longitude!),
          zoom: 13.5,
        ),
        markers: {
          Marker(
            markerId: const MarkerId("currentLocation"),
            position: LatLng(
                currentLocation!.latitude!, currentLocation!.longitude!),
          ),
          const Marker(
            markerId: MarkerId("source"),
            position: sourceLocation,
          ),
          const Marker(
            markerId: MarkerId("destination"),
            position: destination,
          ),
        },
        onMapCreated: (mapController) {
          _controller.complete(mapController);
        },
        polylines: {
          Polyline(
            polylineId: const PolylineId("route"),
            points: polylineCoordinates,
            color: const Color(0xFF7B61FF),
            width: 6,
          ),
        },
      ),
    );
  }
}
