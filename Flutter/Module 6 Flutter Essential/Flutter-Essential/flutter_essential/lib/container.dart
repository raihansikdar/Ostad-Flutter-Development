import 'package:flutter/material.dart';


class ContainerPage extends StatelessWidget {
  const ContainerPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container"),
      ),
      body: Container(
        height: 150,
        width: 200,
        alignment: Alignment.center,
        padding: const EdgeInsets.only(top:30), // vitorer element er position change hobe
        margin: const EdgeInsets.all(30), // warp paddiner moto kkaj kore box niye
        decoration: BoxDecoration(
          color: Colors.red,
           border: Border.all(color: Colors.black,width: 5)
        ),
        child: Text("Raihan"),
      ),
    );
  }
}