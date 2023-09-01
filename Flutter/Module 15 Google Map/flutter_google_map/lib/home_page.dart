import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GoogleMapController? _googleMapController;
  final Location _location = Location();
  LatLng _myCurrentLocation =
      const LatLng(23.808319312124283, 90.35984961499547);
  final List<LatLng> _polylineCoordinates = [];
  final Set<Polyline> _polyLines = {};
  Marker _marker = const Marker(markerId: MarkerId('my_location'));
  bool isDrawing = false;

  void getLocation() {
    _location.onLocationChanged.listen((LocationData newLocation) {
      _myCurrentLocation =
          LatLng(newLocation.latitude!, newLocation.longitude!);
      if (isDrawing) {
        updatingPolyline();
      }
      updatingMarker();
      setState(() {});
    });
    startForLocationUpdating();
  }

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void startForLocationUpdating() async {
    if (await _location.serviceEnabled()) {
      _location.changeSettings(interval: 10000);
      _location.enableBackgroundMode(enable: true);
    } else {
      bool serviceEnabled = await _location.requestService();
      if (!serviceEnabled) {
        return;
      }
    }
  }

  void updatingPolyline() {
    _polylineCoordinates.add(_myCurrentLocation);
    _polyLines.add(Polyline(
      polylineId: const PolylineId('my_polyline'),
      points: _polylineCoordinates,
      color: Colors.black,
      width: 5,
    ));
  }

  void updatingMarker() {
    _marker = Marker(
      markerId: const MarkerId('my_location'),
      position: _myCurrentLocation,
      infoWindow: InfoWindow(
        title: 'My current location',
        snippet:
            '${_myCurrentLocation.latitude},${_myCurrentLocation.longitude}',
      ),
      onTap: () {
        _googleMapController!
            .showMarkerInfoWindow(const MarkerId('my_location'));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Real-Time Location Tracking'),
      ),
      body: GoogleMap(
        onMapCreated: (GoogleMapController controller) {
          _googleMapController = controller;
        },
        initialCameraPosition:
            CameraPosition(target: _myCurrentLocation, zoom: 16),
        myLocationEnabled: true,
        myLocationButtonEnabled: true,
        markers: {_marker},
        polylines: _polyLines,
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                isDrawing = true;
              });
            },
            child: const Text("Start"),
          ),
          const SizedBox(width: 16),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                isDrawing = false;
              });
            },
            child: const Text("Stop"),
          ),
        ],
      ),
    );
  }
}
