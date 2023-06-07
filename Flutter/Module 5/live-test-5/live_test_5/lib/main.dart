import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
    mysnakbar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Live Test"),
        centerTitle: true,
        elevation: 2,
        backgroundColor: Colors.red,
       actions: const[
        Padding(
          padding:  EdgeInsets.all(8.0),
          child: Icon(Icons.message),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.person),
        ),
       ],

      ),
      body: const Center(
        child: Text("Welcome to live Text",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22.0),),
        ),
       drawer: Drawer(
        child: ListView(
          children: [
           const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    image: NetworkImage(
                  "https://media.istockphoto.com/id/1322277517/photo/wild-grass-in-the-mountains-at-sunset.jpg?s=612x612&w=0&k=20&c=6mItwwFFGqKNKEAzv0mv6TaxhLN3zSE43bWmFN--J5w=",   
                ),
                fit: BoxFit.cover,
                ),
              ),
              child: Text("Raihan"),
            ),

            ListTile(
              title: const Text("Home"),
              leading: const Icon(Icons.home),
              onTap: (){},
            ),
            ListTile(
              leading: const Icon(Icons.account_box),
              title: const Text("About"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.contact_mail),
              title: const Text("Contact"),
              onTap: () {},
            )
          ],
        ),
      ),


       floatingActionButton: FloatingActionButton(
        elevation: 10,
        backgroundColor: Colors.blue,
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text("Message for floating action button")));
        },
        child: const Icon(Icons.add),
        
      ),
       floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}