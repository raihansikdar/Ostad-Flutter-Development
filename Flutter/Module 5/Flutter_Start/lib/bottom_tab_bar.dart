import 'package:flutter/material.dart';

class BottomTabBar extends StatelessWidget {
  const BottomTabBar({super.key});

  mySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Tab Bar"),
        centerTitle: true,
        elevation: 5,
        titleSpacing: 0,
        titleTextStyle: const TextStyle(fontWeight: FontWeight.bold),
        toolbarHeight: 60,
        toolbarOpacity: 0.8,
        backgroundColor: Colors.blueGrey,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          mySnackBar("floatingActionButton", context);
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Message"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person"),
        ],
        onTap: (int index) {
          if (index == 0) {
            mySnackBar("Home", context);
          } else if (index == 1) {
            mySnackBar("Message", context);
          } else {
            mySnackBar("Person", context);
          }
        },
      ),
    );
  }
}
