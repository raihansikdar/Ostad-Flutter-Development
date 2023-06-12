import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  LiveTest6(),
    );
  }
}

class LiveTest6 extends StatelessWidget {
  LiveTest6({super.key});

  final List<String> myItems = [
    "Apples",
    "Bananas",
    "Bread",
    "Milk",
    "Eggs",
  ];
  mySnackbar(context, message) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Shopping List"),
        centerTitle: true,
        actions: [
          // Padding(
          //   padding: const EdgeInsets.only(right: 10),
          //   child: Icon(Icons.shopping_cart),
          // )
          IconButton(
            onPressed: () {
              mySnackbar(context, "Cart is empty");
            },
            icon:const Icon(Icons.shopping_cart),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:10,left: 20,right: 20,bottom: 20),
        child: ListView.builder(
          itemCount: myItems.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const Icon(Icons.shopping_basket),
              title: Text(myItems[index],style: const TextStyle(fontWeight: FontWeight.bold),),
            );
          },
        ),
      ),
    );
  }
}
