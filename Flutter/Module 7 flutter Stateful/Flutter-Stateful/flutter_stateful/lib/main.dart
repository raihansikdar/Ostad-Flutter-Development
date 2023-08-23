import 'package:flutter/material.dart';
import 'package:flutter_stateful/tutorial/sum_app.dart';

import 'live_class/live_class_1/counter_screen.dart';
import 'live_class/live_class_2/routing_home_page.dart';
import 'live_class/live_class_3/expanded_flexible.dart';
import 'main_screen.dart';
import 'test_page.dart';
import 'tutorial/sum_app_easy.dart';

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
      home: LiveClass3(),
    );
  }
}

