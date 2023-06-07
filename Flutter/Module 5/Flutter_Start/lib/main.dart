// import 'package:flutter/material.dart';
// import 'package:flutter_start/MyAppBar.dart';
// import 'package:flutter_start/bottom_tab_bar.dart';
// import 'package:flutter_start/navigation_drawer_page.dart';
//
//
// void main(){
//   return runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(primarySwatch: Colors.grey),
//       darkTheme: ThemeData(primarySwatch: Colors.deepPurple),
//       color: Colors.red,
//       debugShowCheckedModeBanner: false,
//       home: NavigationDrawerPage(),
//     );
//   }
// }
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Tabbed App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _currentPageIndex = 0;
//
//   final List<Widget> _pages = [
//     Page(
//       color: Colors.red,
//       title: 'Page 1',
//     ),
//     Page(
//       color: Colors.green,
//       title: 'Page 2',
//     ),
//     Page(
//       color: Colors.blue,
//       title: 'Page 3',
//     ),
//   ];
//
//   void _selectDrawerItem(int index) {
//     setState(() {
//       _currentPageIndex = index;
//       Navigator.of(context).pop(); // Close the drawer
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Tabbed App'),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: <Widget>[
//             DrawerHeader(
//               child: Text('Navigation Drawer'),
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//             ),
//             ListTile(
//               title: Text('Page 1'),
//               onTap: () => _selectDrawerItem(0),
//             ),
//             ListTile(
//               title: Text('Page 2'),
//               onTap: () => _selectDrawerItem(1),
//             ),
//             ListTile(
//               title: Text('Page 3'),
//               onTap: () => _selectDrawerItem(2),
//             ),
//           ],
//         ),
//       ),
//       body: _pages[_currentPageIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentPageIndex,
//         onTap: (int index) {
//           setState(() {
//             _currentPageIndex = index;
//           });
//         },
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Page 1',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.business),
//             label: 'Page 2',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.school),
//             label: 'Page 3',
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class Page extends StatelessWidget {
//   final Color color;
//   final String title;
//
//   const Page({Key? key, required this.color, required this.title})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: color,
//         onPressed: () {},
//         child: Icon(Icons.add),
//       ),
//       body: Center(
//         child: Text(
//           title,
//           style: TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }
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

