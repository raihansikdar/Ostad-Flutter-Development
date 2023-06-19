import 'package:assignment_7/pdf.dart';
import 'package:flutter/material.dart';

import 'product_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  PDFViewerPage(),
    ); 
  }
}

