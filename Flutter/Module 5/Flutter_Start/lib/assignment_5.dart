import 'package:flutter/material.dart';
//import 'package:flutter_start/main.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Assignment",
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:Text("Assignment 5"),
      ),
      body: Center(
        child: Text("page1"),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

