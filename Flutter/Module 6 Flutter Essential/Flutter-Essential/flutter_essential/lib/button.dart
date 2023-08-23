import 'package:flutter/material.dart';

class ButtonPage extends StatelessWidget {
  ButtonPage({super.key});

  mySnackbar(context, message) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
    padding: const EdgeInsets.all(15),
    backgroundColor: Colors.amber,
    foregroundColor: Colors.blue,
    shape: const StadiumBorder(
      //borderRadius: BorderRadius.circular(15),
    )
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {
              mySnackbar(context, "Text Button");
            },
            child: const Text("Text Button"),
          ),
          ElevatedButton(
            style: buttonStyle,
            onPressed: () {
              mySnackbar(context, "Elevated Button");
            },
            child: const Text("Elevated Button"),
          ),
          OutlinedButton(
            onPressed: () {
              mySnackbar(context, "Outlined Button");
            },
            child: const Text("Outlined Button"),
          )
        ],
      ),
    );
  }
}
