import 'package:flutter/material.dart';

TextStyle headline(context) {
  var width = MediaQuery.of(context).size.width;
  if (width < 700) {
    return TextStyle(
      color: Colors.red,
      fontSize: 34,
    );
  } else {
    return TextStyle(
      color: Colors.amber,
      fontSize: 64,
    );
  }
}
