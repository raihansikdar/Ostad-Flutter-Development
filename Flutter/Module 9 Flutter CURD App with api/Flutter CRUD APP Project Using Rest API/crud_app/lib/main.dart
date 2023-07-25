import 'package:crud_app/live_class_1/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.grey,
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),

        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          fillColor: Colors.white,
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: const BorderSide(color: Colors.red, width: 3),
          ),
          hintStyle: const TextStyle(color: Colors.red),
        ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 40),
          backgroundColor: Colors.red,
        ),
      )

      ),
     
     home: HomePage(),
     // home: const ProductCreateScreen(),
    );
  }
}
