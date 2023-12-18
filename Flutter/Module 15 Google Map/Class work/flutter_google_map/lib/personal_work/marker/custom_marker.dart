import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CustomMarkerPage extends StatefulWidget {
  const CustomMarkerPage({Key? key}) : super(key: key);

  @override
  State<CustomMarkerPage> createState() => _CustomMarkerPageState();
}

class _CustomMarkerPageState extends State<CustomMarkerPage> {

  BitmapDescriptor markerIcon = BitmapDescriptor.defaultMarker;

  @override
  void initState() {
    addMarkerIcon();
    super.initState();
  }

  void addMarkerIcon(){
    BitmapDescriptor.fromAssetImage(const ImageConfiguration(), "assets/images/home.png").then((value) {
      markerIcon = value;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Custom Marker"),
      ),
      body: GoogleMap(
          initialCameraPosition: CameraPosition(
              zoom: 17,
              target: LatLng(23.808353048790632, 90.3605643284871),
          ),

        markers: <Marker>{
            Marker(
              markerId: MarkerId("home"),
              position: LatLng(23.808353048790632, 90.3605643284871),
              draggable: true,
              onDragEnd: (value){

              },
              icon:markerIcon,
            )
        },
      ),
    );
  }
}
