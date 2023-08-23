import 'package:flutter/material.dart';

class LayoutBuilderPage extends StatelessWidget {
  const LayoutBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("FractionalySizeBoxPage"),
        ),
        body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            return Container(
              height: 400,
              width: 400,
              color: Colors.amber,
            );
          }
          else{
             return Container(
              height: 200,
              width: 200,
              color: Colors.blue,
            );
          }
        }));
  }
}
