import 'package:flutter/material.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _subTitleController = TextEditingController();
  final TextEditingController _updateTitleController = TextEditingController();
  final TextEditingController _updateSubTitleController =
      TextEditingController();

  List<Todo> todos = [
    Todo("title", "description", true),
  ];

  GlobalKey<FormState> todoForm = GlobalKey<FormState>();

  showTodoBottomSheet() {
    showModalBottomSheet(
        context: (context),
        builder: (context) {
          return Form(
            key: todoForm,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child: Text("Add Todo"),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    controller: _titleController,
                    validator: (value) {
                      if (value?.trim().isEmpty ?? true) {
                        return 'Pease enter your title';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      hintText: "title",
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    controller: _subTitleController,
                    validator: (value) {
                      if (value?.trim().isEmpty ?? true) {
                        return "Pease enter your description";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      hintText: "subTitle",
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (todoForm.currentState!.validate()) {
                      todos.add(
                        Todo(_titleController.text.trim(),
                            _subTitleController.text.trim(), false),
                      );
                      _titleController.clear();
                      _subTitleController.clear();

                      Navigator.pop(context);
                      if (mounted) {
                        setState(() {});
                      }
                    }
                  },
                  child: const Text("ADD"),
                )
              ],
            ),
          );
        });
  }

  showUpdateTodoBottomSheet(int index) {
    showModalBottomSheet(
        context: (context),
        builder: (context) {
          return Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 16.0),
                child: Text("Add Todo"),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: _updateTitleController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    hintText: "title",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: _updateSubTitleController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    hintText: "subTitle",
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  if (_updateTitleController.text.trim().isNotEmpty &&
                      _updateSubTitleController.text.trim().isNotEmpty) {
                    todos[index].title = _updateTitleController.text.trim();
                    todos[index].description =
                        _updateSubTitleController.text.trim();

                    _updateTitleController.clear();
                    _updateSubTitleController.clear();

                    Navigator.pop(context);
                    if (mounted) {
                      setState(() {});
                    }
                  }
                },
                child: const Text("ADD"),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Todo App"),
      ),
      body: ListView.separated(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
              onLongPress: () {
                todos[index].isDone = !todos[index].isDone;
                if (mounted) {
                  setState(() {});
                }
              },
              leading: Visibility(
                  visible: todos[index].isDone,
                  replacement: const Icon(Icons.close),
                  child: const Icon(Icons.done)),
              title: Text(todos[index].title),
              subtitle: Text(todos[index].description),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      showUpdateTodoBottomSheet(index);
                      if (mounted) {
                        setState(() {});
                      }
                    },
                    icon: const Icon(Icons.edit),
                  ),
                  IconButton(
                    onPressed: () {
                      todos.removeAt(index);
                      setState(() {});
                    },
                    icon: const Icon(Icons.close),
                  ),
                ],
              ));
        },
        separatorBuilder: (context, index) => const Divider(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showTodoBottomSheet();
          // todos.add(Todo("Name", "Student", false));
          // if (mounted) {
          //   setState(() {});
          // }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Todo {
  String title;
  String description;
  bool isDone;
  Todo(this.title, this.description, this.isDone);
}
