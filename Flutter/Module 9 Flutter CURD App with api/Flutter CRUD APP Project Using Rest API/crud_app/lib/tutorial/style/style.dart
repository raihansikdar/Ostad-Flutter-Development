import 'package:flutter/material.dart';

const redColor = Colors.red;
const gereenColor = Colors.green;
const whiteColor = Colors.white;
const blueColor = Colors.blue;

InputDecoration appInputDecoration(textLabel) {
  return InputDecoration(
    focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: redColor, width: 3)),
    fillColor: whiteColor,
    filled: true,
    contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
    enabledBorder:
        const OutlineInputBorder(borderSide: BorderSide(color: blueColor)),
    //   border: const OutlineInputBorder(),
    labelText: textLabel,
    labelStyle: const TextStyle(color: Colors.grey),
  );
}

screenBackground(context) {
  return Image.asset(
    "assets/images/background.jpg",
    alignment: Alignment.center,
    width: MediaQuery.sizeOf(context).width,
    height: MediaQuery.sizeOf(context).height,
    fit: BoxFit.cover,
  );
}

DecoratedBox appDecoretedStyle(child) {
  return DecoratedBox(
    decoration: BoxDecoration(
      color: whiteColor,
      border: Border.all(color: blueColor, width: 1),
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: child,
    ),
  );
}

ButtonStyle appButtonStyle() {
  return ElevatedButton.styleFrom(
      elevation: 1.0,
      padding: EdgeInsets.all(0),
      backgroundColor: Colors.transparent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)));
}

Ink successButtonChild(ButtonText) {
  return Ink(
    decoration: BoxDecoration(
        color: gereenColor, borderRadius: BorderRadius.circular(8.0)),
    child: Container(
      height: 45,
      alignment: Alignment.center,
      child: Text(
        ButtonText,
        style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
      ),
    ),
  );
}
