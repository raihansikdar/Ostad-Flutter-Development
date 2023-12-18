import 'package:google_maps_flutter/google_maps_flutter.dart';

class Component{
  Component._();
  static final Set<Marker>markers = {
    Marker(
      markerId: const MarkerId("marker-1"),
      position:  const LatLng(23.807895262596844, 90.36067311061),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
      infoWindow: const InfoWindow(title: "Road-4"),
    ),
    Marker(
      markerId: const MarkerId("marker-2"),
      position:  const LatLng(23.80741703658476, 90.36311633120935),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
      infoWindow: const InfoWindow(title: "Stadium"),
    ),
    Marker(
      markerId: const MarkerId("marker-3"),
      position:  const LatLng(23.805336050906632, 90.36253697406771),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
      infoWindow: const InfoWindow(title: "Hospital"),
    ),
    Marker(
      markerId: const MarkerId("marker-4"),
      position:  const LatLng(23.80637654791388, 90.35916811957748),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
      infoWindow: const InfoWindow(title: "Random"),
    ),
  };
}