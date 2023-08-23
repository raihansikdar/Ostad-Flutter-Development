import 'package:flutter/material.dart';

// intro part
class LiveClass1 extends StatefulWidget {
  const LiveClass1({super.key});

  @override
  State<LiveClass1> createState() {
    print("step 1 : create state");
    return _LiveClass1State();
  }
}

// state part
class _LiveClass1State extends State<LiveClass1> {
  String welcomeMessage = "hi";

  @override
  void initState() {
    super.initState();
    print("step 2 : init state");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
       print("step 3 : didChangeDependencies");
  }

  @override
  Widget build(BuildContext context) {
    print("step 4 : build");
    return Scaffold(
      appBar: AppBar(
        title: const Text("LiveClass1"),
      ),
      body: Center(
        child: Text(
          welcomeMessage,
          style: const TextStyle(fontSize: 22),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          welcomeMessage = welcomeMessage == "hi" ? "Hello" : "hi";
          setState(() {});
        },
        label: const Text("Change Text"),
      ),
    );
    
  }

  @override
  void deactivate() {
       print("step 5 : deactivate");
    super.deactivate();
  }

  @override
  void dispose() {
      print("step 6 : dispose");
    super.dispose();
  }
}
