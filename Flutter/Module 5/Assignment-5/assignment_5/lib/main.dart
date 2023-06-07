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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int bottomBarCurrentIndex = 0;

  final pages = [
    Page(pageText: "Home", iconColor: Colors.amber),
    Page(pageText: "Message", iconColor: Colors.blue),
    Page(pageText: "Person", iconColor: Colors.red),
  ];

  void selectDrawerItem(int index) {
    setState(() {
      bottomBarCurrentIndex = index;
      Navigator.of(context).pop();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment 5"),
      ),
      body: pages[bottomBarCurrentIndex],
      drawer: Drawer(
        child: ListView(
          children:  [
           const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff764abc),
              ),
              child: UserAccountsDrawerHeader(
                accountName: Text(
                  "Raihan Sikdar",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                accountEmail: Text(
                  "raihansikdar@gmail.com",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                currentAccountPicture: FlutterLogo(),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title:const Text("Home"),
              onTap: () => selectDrawerItem(0),
            ),
            ListTile(
              leading:const Icon(Icons.message),
              title:const Text("Message"),
              onTap: () => selectDrawerItem(1),
            ),
            ListTile(
              leading:const Icon(Icons.person),
              title:const Text("Person"),
              onTap: () => selectDrawerItem(2),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomBarCurrentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "Message",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Person",
          ),
        ],
        onTap: (index) {
          setState(() {
            bottomBarCurrentIndex = index;
          });
        },
      ),
    );
  }
}

class Page extends StatelessWidget {
  final String pageText;
  final Color iconColor;
  const Page({super.key, required this.pageText, required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(pageText,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: iconColor,
        child: const Icon(Icons.add),
      ),
    );
  }
}
