import 'package:flutter/material.dart';
import 'package:flutter_essential/style.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Media Query"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("width : $width"),
            Text("height : $height"),
            Text("orientation : $orientation"),
            Text("textstyle",style:headline(context))
          ],
        ),
      ),
    );
  }
}
