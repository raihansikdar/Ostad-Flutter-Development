import 'package:flutter/material.dart';
import 'package:flutter_essential/live_class/live_class_1(Button).dart';
import 'package:flutter_essential/tab_bar.dart';
import 'package:flutter_essential/alert_dialog.dart';
import 'package:flutter_essential/aspect_ratio.dart';
import 'package:flutter_essential/button.dart';
import 'package:flutter_essential/card.dart';
import 'package:flutter_essential/circle_and_linear_progress.dart';
import 'package:flutter_essential/container.dart';
import 'package:flutter_essential/expanded.dart';
import 'package:flutter_essential/flexible.dart';
import 'package:flutter_essential/fraxctionaly_sized_box.dart';
import 'package:flutter_essential/grid_view_builder.dart';
import 'package:flutter_essential/layout_builder.dart';
import 'package:flutter_essential/list_and_grid_view.dart';
import 'package:flutter_essential/list_view_builder.dart';
import 'package:flutter_essential/live_class/live_class_2.dart';
import 'package:flutter_essential/live_class/live_class_3.dart';
import 'package:flutter_essential/media_query.dart';
import 'package:flutter_essential/text_field.dart';

import 'navigation/simple_navigation.dart';
import 'tab_bar_design.dart';

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
      home: AlertDialogPage(),
    );
  }
}

