import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';

class ConvertCoordinateToAddress extends StatefulWidget {
   ConvertCoordinateToAddress({Key? key}) : super(key: key);

  @override
  State<ConvertCoordinateToAddress> createState() => _ConvertCoordinateToAddressState();
}

class _ConvertCoordinateToAddressState extends State<ConvertCoordinateToAddress> {
   String address='';
   String mylatlong = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(address,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            Text(mylatlong),
            ElevatedButton(
              onPressed: () async {
                List<Placemark> placemarks = await placemarkFromCoordinates(23.804196145517956, 90.36083958926474);
                List<Location> locations = await locationFromAddress(placemarks.toString());
                setState(() {
                  address =  placemarks.reversed.last.thoroughfare! +
                      ", " +
                      placemarks.reversed.last.subLocality! +
                      ", " +
                      placemarks.reversed.last.locality! +
                      ", " +
                      placemarks.reversed.last.country!;
                  mylatlong = locations.last.latitude.toString() +","+ locations.last.longitude.toString();
                  print(address);
                  print(mylatlong);
                });
              },
              child: const Text("Convert"),
            )
          ],
        ),
      ),
    );
  }
}
