import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive"),
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        print(constraints.maxWidth);
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                children: [
                  SizedBox(
                    height: 50,
                    width: 80,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Text("I am a Software Engineer "),
                    ),
                  ),
                  Text(" I am working with flutter "),
                  // Text("I am a Software Engineer "),
                ],
              ),
              SizedBox(
                height: size.height / 5,
              ),
              if(constraints.maxHeight <= 700)
              const Text("Mobile"),
              
              Container(
                color: Colors.pink,
                height: 200,
                width: double.infinity,
                alignment: Alignment.center,
                child: AspectRatio(
                  aspectRatio: 1 / 1,
                  child: Container(
                    color: Colors.yellow,
                    // height: 200,
                    width: double.infinity,
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
