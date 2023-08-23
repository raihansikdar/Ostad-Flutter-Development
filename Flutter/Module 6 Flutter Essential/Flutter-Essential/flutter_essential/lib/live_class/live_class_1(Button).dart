import 'package:flutter/material.dart';

class LiveClass1 extends StatefulWidget {
  const LiveClass1({super.key});

  @override
  State<LiveClass1> createState() => _LiveClass1State();
}

class _LiveClass1State extends State<LiveClass1> {
  final TextEditingController _textEditingController = TextEditingController();

  bool showClearIcon = false;
  clearTextField() {
    setState(() {
      _textEditingController.clear();
      showClearIcon = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button Style"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  // minimumSize: const Size(80, 40),
                  elevation: 0,
                  shadowColor: Colors.blue,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 60, vertical: 20),
      
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  side: const BorderSide(
                      color: Colors.black, width: 2, strokeAlign: 5),
                ),
                onPressed: () {},
                child: const Text(
                  "Press",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                style: TextButton.styleFrom(
                    // backgroundColor: Colors.amberAccent,
                    // sob ager moto
                    ),
                onPressed: () {},
                child: const Text(
                  "Text Button",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  side: const BorderSide(
                    color: Colors.red,
                    style: BorderStyle.solid,
                    width: 2,
                    strokeAlign: 3,
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Outline Button",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add),
              ),
              const SizedBox(
                height: 10,
              ),
              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  side: const BorderSide(
                    color: Colors.red,
                    style: BorderStyle.solid,
                    width: 2,
                    strokeAlign: 3,
                  ),
                ),
                onPressed: () {},
                icon: const Icon(Icons.storage),
                label: const Text(
                  "Outline Button",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  onChanged: (value) {
                    showClearIcon = value.isNotEmpty;
                   // print(showClearIcon);
                    setState(() {});
                  },
                  controller: _textEditingController,
                  decoration: InputDecoration(
                    hintText: "Enter your name",
                    suffixIcon: showClearIcon
                        ? GestureDetector(
                             onTap: clearTextField,
                            // onTap: () {
                            //   _textEditingController.clear();
                            //   showClearIcon = false;
                            //   setState(() {});
                            // },
                            child: const Icon(Icons.close),
                          )
                        : null,
      
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0),
                      borderSide: const BorderSide(
                        color: Colors.yellow,
                        width: 3.0,
                      ),
                    ),
                    // focusedBorder: OutlineInputBorder(
                    //     borderRadius: BorderRadius.circular(16.0),
                    //     borderSide: const BorderSide(
                    //       color: Colors.red,
                    //       width: 3.0,
                    //     )),
                  ),
                ),
              ),
             const Padding(
                padding:  EdgeInsets.all(16.0),
                child:  TextField(
                  obscureText: true,
                 // readOnly: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
