import 'package:flutter/material.dart';

class LiveClass3 extends StatelessWidget {
  LiveClass3({super.key});

  final List<String> name = [
    "Raihan",
    "Mamun",
    "Afridi",
    "Rafsan",
    "Amir",
    "Raiyan"
  ];

  final Map<int, String> university = {
    1: "NSU",
    2: "Brac",
    3: "Aiub",
    4: "Iub",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Live Class 3"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              primary: false,
              itemCount: name.length,
              itemBuilder: ((context, index) {
                return Column(
                  children: [
                    ListTile(
                      title: Text(name[index]),
                    ),
                    const Divider(
                      height: 0,
                      color: Colors.black,
                    ),
                  ],
                );
              }),
            ),
            const Text("separated"),
            ListView.separated(
              shrinkWrap: true,
              primary: false,
              itemCount: university.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(university.values.elementAt(index).toString()),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  height: 0,
                  color: Colors.red,
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Stack(
                children: [
                  Container(
                    height: 150,
                    width: 200,
                    color: Colors.black,
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 90,
                        width: 140,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 65,
                        width: 100,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
