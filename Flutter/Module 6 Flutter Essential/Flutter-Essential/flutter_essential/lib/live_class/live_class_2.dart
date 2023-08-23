import 'package:flutter/material.dart';

class LiveClass2 extends StatelessWidget {
  LiveClass2({super.key});
  // final TextEditingController _emailController = TextEditingController();
  final TextEditingController _emailController =
      TextEditingController(text: "example@gmail.com");
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Live Class 2"),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  labelText: "Email",
                  hintText: "Enter Remarks",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                controller: _nameController,
                decoration: const InputDecoration(
                    labelText: "Name",
                    hintText: "Enter Remarks",
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 10)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue))),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  print(_emailController.text);
                  print(_nameController.text);
                  _emailController.clear();
                  _nameController.text = "Mamun";
                },
                child: const Text("Show")),
            ListTile(
              onTap: () {
                print("Tapped");
              },
              onLongPress: () {
                print("on long tapped");
              },
              leading: const Icon(Icons.person),
              title: const Text("User name"),
              subtitle: const Text("design"),
              trailing: const Icon(Icons.arrow_circle_left_rounded),
              tileColor: Colors.amber,
             // contentPadding: EdgeInsets.zero,
             contentPadding:const EdgeInsets.all(10),
            ),

            Wrap(
            alignment: WrapAlignment.center,
            //direction: Axis.vertical, // can do
              children: [
                ElevatedButton(onPressed: (){}, child: Text("Submit")),
                ElevatedButton(onPressed: (){}, child: Text("Submit")),
                ElevatedButton(onPressed: (){}, child: Text("Submit")),
                ElevatedButton(onPressed: (){}, child: Text("Submit")),
                ElevatedButton(onPressed: (){}, child: Text("Submit")),
                ElevatedButton(onPressed: (){}, child: Text("Submit")),
                ElevatedButton(onPressed: (){}, child: Text("Submit")),
                ElevatedButton(onPressed: (){}, child: Text("Submit")),
                ElevatedButton(onPressed: (){}, child: Text("Submit")),
                ElevatedButton(onPressed: (){}, child: Text("Submit")),
                ElevatedButton(onPressed: (){}, child: Text("Submit")),
                ElevatedButton(onPressed: (){}, child: Text("Submit")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
