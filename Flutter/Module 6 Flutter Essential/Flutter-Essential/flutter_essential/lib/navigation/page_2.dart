import 'package:flutter/material.dart';


class Page2 extends StatelessWidget {
   final String message;
  const Page2({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         children: [
           ElevatedButton(onPressed: (){
            
           }, child: const Text("Go to Page 1")),
           Text(message),
         ],
        ),
      )
    );
  }
}
