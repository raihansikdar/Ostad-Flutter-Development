import 'package:flutter/material.dart';

class FloatingActionButtonPage extends StatelessWidget {
  const FloatingActionButtonPage({Key? key}) : super(key: key);

  mysnakbar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Floating Action Button"),
        actions: [
          IconButton(
              onPressed: () {
                mysnakbar("This is message", context);
              },
              icon: const Icon(Icons.message)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        backgroundColor: Colors.blue,
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text("Message for floating action button")));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
