import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key});

  List<String> img = [
    "assets/images/img.jpg",
    "assets/images/img.jpg",
    "assets/images/img.jpg",
    "assets/images/img.jpg",
    "assets/images/img.jpg",
    "assets/images/img.jpg",
    "assets/images/img.jpg",
    "assets/images/img.jpg",
    "assets/images/img.jpg",
    "assets/images/img.jpg",
    "assets/images/img.jpg",
    "assets/images/img.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: OrientationBuilder(
          builder: (context, orientation){
        if(orientation == Orientation.landscape){
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: AspectRatio(
                      aspectRatio: 10/ 10,
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/images/img.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                 const SizedBox(width: 10,),
                  SizedBox(
                    width: 500,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Jhon Doe",
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "In Flutter, you can use the lorem package to generate placeholder text, commonly known as \"Lorem Ipsum\" text. The lorem package provides a simple API to generate random placeholder text for your UI mockups or testing purposes.",
                          textAlign: TextAlign.justify,
                        ),
                       
                        GridView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          primary: false,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 5,
                          ),
                          itemCount: img.length,
                          itemBuilder: (context, index) {
                            return Image.asset(img[index]);
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }

        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: AspectRatio(
                    aspectRatio: 10 / 9,
                    child: Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage("assets/images/img.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Jhon Doe",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "In Flutter, you can use the lorem package to generate placeholder text, commonly known as \"Lorem Ipsum\" text. The lorem package provides a simple API to generate random placeholder text for your UI mockups or testing purposes.",
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 10),
                GridView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 0,
                  ),
                  itemCount: img.length,
                  itemBuilder: (context, index) {
                    return Image.asset(img[index]);
                  },
                ),
              ],
            ),
          ),
        );

      }),
    );
  }
}
