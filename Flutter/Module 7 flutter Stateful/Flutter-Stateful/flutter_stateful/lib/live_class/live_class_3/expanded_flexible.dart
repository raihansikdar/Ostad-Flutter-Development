import 'package:flutter/material.dart';

class LiveClass3 extends StatefulWidget {
  const LiveClass3({super.key});

  @override
  State<LiveClass3> createState() => _LiveClass3State();
}

class _LiveClass3State extends State<LiveClass3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expanded Flexible"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

          Container(
            height: 200,
            color: Color.fromARGB(255, 71, 71, 62),
            child: Row(
              children: [
                  Flexible(
                  flex: 4,
                   child: Container(
                   // height: 120,
                    width: 150,
                    color: Colors.red,
                   ),
                 ),
                 Flexible(
                  flex: 3,
                   child: Container(
                   // height: 120,
                    width: 150,
                    color: Colors.blue,
                   ),
                 ),
                  Flexible(
                  flex: 1,
                   child: Container(
                   // height: 120,
                    width: 150,
                    color: Colors.yellow,
                   ),
                 ),
                 Flexible(
                  flex: 2,
                 // fit: FlexFit.loose,
                   child: Container(
                    //height: 120, // FlexFit.loose height wise kaj kore,
                    width: 150,
                    color: Colors.grey,
                   ),
                 ),
              ],
            ),
          ),
               Flexible(
                flex: 4,
                 child: Container(
                 // height: 120,
                  width: 150,
                  color: Colors.red,
                 ),
               ),
               Flexible(
                flex: 3,
                 child: Container(
                 // height: 120,
                  width: 150,
                  color: Colors.blue,
                 ),
               ),
                Flexible(
                flex: 1,
                 child: Container(
                 // height: 120,
                  width: 150,
                  color: Colors.yellow,
                 ),
               ),
               Flexible(
                flex: 2,
               // fit: FlexFit.loose,
                 child: Container(
                  //height: 120, // FlexFit.loose height wise kaj kore,
                  width: 150,
                  color: Colors.grey,
                 ),
               ),
          ],
        ),
      ),
    );
  }
}