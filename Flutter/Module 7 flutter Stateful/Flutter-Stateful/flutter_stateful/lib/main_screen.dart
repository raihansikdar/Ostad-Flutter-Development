import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String buttonPresses = '';
  String btn2 = '';
  String operator = '';
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Wrap(
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.fromLTRB(10, 100, 0, 0),
                  width: 400,
                  height: 200,
                  child: Column(
                    children: [
                      Text(
                        btn2,
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        operator,
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        buttonPresses,
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(
                        result.toString(),
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 82,
                  height: 80,
                  color: Color.fromARGB(255, 110, 109, 109),
                  padding: EdgeInsets.all(5),
                  child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        buttonPresses += '1';
                      });
                    },
                    child: Text('1'),
                    style:
                        OutlinedButton.styleFrom(backgroundColor: Colors.white),
                  ),
                ),
                Container(
                  width: 82,
                  height: 80,
                  color: Color.fromARGB(255, 110, 109, 109),
                  padding: EdgeInsets.all(5),
                  child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        buttonPresses += '2';
                      });
                    },
                    child: Text('2'),
                    style:
                        OutlinedButton.styleFrom(backgroundColor: Colors.white),
                  ),
                ),
                Container(
                  width: 82,
                  height: 80,
                  color: Color.fromARGB(255, 110, 109, 109),
                  padding: EdgeInsets.all(5),
                  child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        buttonPresses += '3';
                      });
                    },
                    child: Text('3'),
                    style:
                        OutlinedButton.styleFrom(backgroundColor: Colors.white),
                  ),
                ),
                Container(
                  width: 82,
                  height: 80,
                  color: Color.fromARGB(255, 110, 109, 109),
                  padding: EdgeInsets.all(5),
                  child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        buttonPresses += '4';
                      });
                    },
                    child: Text('4'),
                    style:
                        OutlinedButton.styleFrom(backgroundColor: Colors.white),
                  ),
                ),
                Container(
                  width: 82,
                  height: 80,
                  color: Color.fromARGB(255, 110, 109, 109),
                  padding: EdgeInsets.all(5),
                  child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        buttonPresses += '5';
                      });
                    },
                    child: Text('5'),
                    style:
                        OutlinedButton.styleFrom(backgroundColor: Colors.white),
                  ),
                ),
                Container(
                  width: 82,
                  height: 80,
                  color: Color.fromARGB(255, 110, 109, 109),
                  padding: EdgeInsets.all(5),
                  child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        buttonPresses += '6';
                      });
                    },
                    child: Text('6'),
                    style:
                        OutlinedButton.styleFrom(backgroundColor: Colors.white),
                  ),
                ),
                Container(
                  width: 82,
                  height: 80,
                  color: Color.fromARGB(255, 110, 109, 109),
                  padding: EdgeInsets.all(5),
                  child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        buttonPresses += '7';
                      });
                    },
                    child: Text('7'),
                    style:
                        OutlinedButton.styleFrom(backgroundColor: Colors.white),
                  ),
                ),
                Container(
                  width: 82,
                  height: 80,
                  color: Color.fromARGB(255, 110, 109, 109),
                  padding: EdgeInsets.all(5),
                  child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        buttonPresses += '8';
                      });
                    },
                    child: Text('8'),
                    style:
                        OutlinedButton.styleFrom(backgroundColor: Colors.white),
                  ),
                ),
                Container(
                  width: 82,
                  height: 80,
                  color: Color.fromARGB(255, 110, 109, 109),
                  padding: EdgeInsets.all(5),
                  child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        buttonPresses += '9';
                      });
                    },
                    child: Text('9'),
                    style:
                        OutlinedButton.styleFrom(backgroundColor: Colors.white),
                  ),
                ),
                Container(
                  width: 82,
                  height: 80,
                  color: Color.fromARGB(255, 110, 109, 109),
                  padding: EdgeInsets.all(5),
                  child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        buttonPresses += '0';
                      });
                    },
                    child: Text('0'),
                    style:
                        OutlinedButton.styleFrom(backgroundColor: Colors.white),
                  ),
                ),
                Container(
                  width: 82,
                  height: 80,
                  color: Color.fromARGB(255, 110, 109, 109),
                  padding: EdgeInsets.all(5),
                  child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        buttonPresses += '.';
                      });
                    },
                    child: Text('.'),
                    style:
                        OutlinedButton.styleFrom(backgroundColor: Colors.white),
                  ),
                ),
                Container(
                  width: 82,
                  height: 80,
                  color: Color.fromARGB(255, 110, 109, 109),
                  padding: EdgeInsets.all(5),
                  child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        buttonPresses = "";
                        operator = "";
                        btn2 = "";
                        result = 0;
                      });
                    },
                    child: Text('Clear'),
                    style:
                        OutlinedButton.styleFrom(backgroundColor: Colors.white),
                  ),
                ),
                Container(
                  width: 82,
                  height: 80,
                  color: Color.fromARGB(255, 110, 109, 109),
                  padding: EdgeInsets.all(5),
                  child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        btn2 = buttonPresses;
                        buttonPresses = '';
                        operator = '+';
                      });
                    },
                    child: Text('+'),
                    style:
                        OutlinedButton.styleFrom(backgroundColor: Colors.white),
                  ),
                ),
                Container(
                  width: 82,
                  height: 80,
                  color: Color.fromARGB(255, 110, 109, 109),
                  padding: EdgeInsets.all(5),
                  child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        btn2 = buttonPresses;
                        buttonPresses = '';
                        operator = '-';
                      });
                    },
                    child: Text('-'),
                    style:
                        OutlinedButton.styleFrom(backgroundColor: Colors.white),
                  ),
                ),
                Container(
                  width: 82,
                  height: 80,
                  color: Color.fromARGB(255, 110, 109, 109),
                  padding: EdgeInsets.all(5),
                  child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        btn2 = buttonPresses;
                        buttonPresses = '';
                        operator = '*';
                      });
                    },
                    child: Text('*'),
                    style:
                        OutlinedButton.styleFrom(backgroundColor: Colors.white),
                  ),
                ),
                Container(
                  width: 82,
                  height: 80,
                  color: Color.fromARGB(255, 110, 109, 109),
                  padding: EdgeInsets.all(5),
                  child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        btn2 = buttonPresses;
                        buttonPresses = '';
                        operator = '/';
                      });
                    },
                    child: Text('/'),
                    style:
                        OutlinedButton.styleFrom(backgroundColor: Colors.white),
                  ),
                ),
                Container(
                  width: 82,
                  height: 80,
                  color: Color.fromARGB(255, 110, 109, 109),
                  padding: EdgeInsets.all(5),
                  child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        double a = double.parse(btn2);
                        double b = double.parse(buttonPresses);
                        if (operator == '+') {
                          result = a + b;
                        } else if (operator == '-') {
                          result = a - b;
                        } else if (operator == '*') {
                          result = a * b;
                        } else if (operator == '/') {
                          result = a / b;
                        }
                      });
                    },
                    child: Text('='),
                    style:
                        OutlinedButton.styleFrom(backgroundColor: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}