import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);
 mySnakbar(message,context){
   return ScaffoldMessenger.of(context).showSnackBar(
     SnackBar(content: Text(message))
   );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inventory App"),
        titleSpacing: 0,// padding er moto kaj kore left right
        centerTitle: true,
        titleTextStyle: const TextStyle(fontSize: 28,fontWeight: FontWeight.bold),
        toolbarHeight: 60, // appBar er height thik kore
        toolbarOpacity: .8, // appBar er text er opacity baray komay
        elevation: 2,
        backgroundColor: Colors.amber,
        actions: [
          IconButton(onPressed: (){
            mySnakbar("This is message", context);
          }, icon: const Icon(Icons.message),),
          IconButton(onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("This is search")));
          }, icon: const Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.settings)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.email)),
        ],
      ),
    );
  }
}
