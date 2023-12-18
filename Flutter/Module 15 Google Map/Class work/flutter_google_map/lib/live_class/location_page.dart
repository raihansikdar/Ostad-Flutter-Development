

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:location/location.dart';


class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  LocationData? myCurrentLocation;
  late StreamSubscription _locationSubscription;


  @override
  void initState() {
    initialize();
    super.initState();
  }


  void initialize(){
    Location.instance.changeSettings(
      distanceFilter: 10,
      accuracy: LocationAccuracy.high,
      interval: 30
    );
  }

  Future<void> myLocation() async {
    await Location.instance.requestPermission().then((requestPermission) {
      print(requestPermission);
    });
    await Location.instance.hasPermission().then((permissionStatus) {
      print(permissionStatus);
    });
    myCurrentLocation =  await Location.instance.getLocation();
     print(myCurrentLocation);
     if(mounted){
       setState(() {});
     }
  }
  void listenToMyLocation(){
    _locationSubscription = Location.instance.onLocationChanged.listen((location) {
     if(location != myCurrentLocation){
       myCurrentLocation = location;
       print("Track my Location $location");
       if(mounted){
         setState(() {});
       }
     }
    });
  }
  void stopToListenLocation(){
    _locationSubscription.cancel();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Location Title"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("my Location"),
            Text("${myCurrentLocation?.latitude ?? ''} ${myCurrentLocation?.longitude ?? ''}")
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: (){
              listenToMyLocation();
            },
            child:const Icon(Icons.location_on),
          ),
          const SizedBox(width: 16.0),
          FloatingActionButton(
            onPressed: (){
              stopToListenLocation();
            },
            child:const Icon(Icons.close),
          ),
          const SizedBox(width: 16.0),
          FloatingActionButton(
              onPressed: (){
                myLocation();
              },
            child:const Icon(Icons.my_location),
          ),
        ],
      ),
    );
  }
}
