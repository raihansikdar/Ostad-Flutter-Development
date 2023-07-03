import 'dart:developer';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _deadlineController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  myshowDialog(context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Add Task"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: _titleController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    hintText: "Title",
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _descriptionController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    hintText: "Description",
                    contentPadding:
                        const EdgeInsets.fromLTRB(16.0, 50.0, 0, 50.0),  
                  ),
                 
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _deadlineController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    hintText: "Days Required",
                  ),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  if (_titleController.text.trim().isNotEmpty &&
                      _descriptionController.text.trim().isNotEmpty &&
                      _deadlineController.text.trim().isNotEmpty) {
                    todoList.add(
                      Todo(
                          _titleController.text.trim(),
                          _descriptionController.text.trim(),
                          _deadlineController.text.trim()),
                    );
                  }
                  _titleController.clear();
                  _descriptionController.clear();
                  _deadlineController.clear();
                  Navigator.pop(context);
                  if (mounted) {
                    setState(() {});
                  }
                },
                child: const Text("Save"),
              ),
            ],
          );
        });
  }


  myBottomSheet(BuildContext context, {required int index}) {
    Scaffold.of(context).showBottomSheet((BuildContext context) => SizedBox(
          height: 200,
          child: Padding(
            padding:
                const EdgeInsets.only(top: 12, left: 16, right: 16, bottom: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Text Details",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text("Title: ${todoList[index].title}"),
                Text("Description: ${todoList[index].description}"),
                Text("Time Required: ${todoList[index].deadline}"),
                ElevatedButton(
                  onPressed: () {
                    todoList.removeAt(index);
                    setState(() {});
                    Navigator.pop(context);
                  },
                  child: const Text("Delete"),
                ),
              ],
            ),
          ),
        ));
  }

  List<Todo> todoList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task Management"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(todoList[index].title),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      "${todoList[index].description} ${todoList[index].deadline}"),
                ],
              ),
              onLongPress: () {
                myBottomSheet(context, index: index);
              },
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myshowDialog(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Todo {
  String title;
  String description;
  String deadline;
  Todo(this.title, this.description, this.deadline);
}
