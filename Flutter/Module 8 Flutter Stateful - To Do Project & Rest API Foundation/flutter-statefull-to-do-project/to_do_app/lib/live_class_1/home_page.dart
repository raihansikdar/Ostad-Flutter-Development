import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _subTitleController = TextEditingController();
  final TextEditingController _updateTitleController = TextEditingController();
  final TextEditingController _updateSubTitleController =
      TextEditingController();

  bool isDark = false;

  List<Todo> todoList = [
    Todo('home', 'dhaka', true),
  ];
  GlobalKey<FormState> todoForm = GlobalKey<FormState>();
  showTodoBottomSheet() {
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        context: context,
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
                          borderRadius: BorderRadius.circular(8),
                        ),
                        hintText: "title"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextFormField(
                    controller: _subTitleController,
                    validator: (value) {
                      if (value?.trim().isEmpty ?? true) {
                        return 'Pease enter your description';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        hintText: "subTitle"),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      // if (_titleController.text.trim().isNotEmpty &&
                      //     _subTitleController.text.trim().isNotEmpty) {
                        if(todoForm.currentState!.validate()){
                        todoList.add(Todo(_titleController.text.trim(),
                            _subTitleController.text.trim(), false));

                        _titleController.clear();
                        _subTitleController.clear();

                        Navigator.pop(context);
                        if (mounted) {
                          setState(() {});
                        }
                      }
                    },
                    child: const Text("ADD"))
              ],
            ),
          );
        });
  }

  showUpdateTodoBottomSheet(int index) {
    _updateTitleController.text = todoList[index].title!;
    _updateSubTitleController.text = todoList[index].description!;

    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      context: context,
      builder: (context) {
        return Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: Text("Update Todo"),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _updateTitleController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
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
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: "subTitle",
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                if (_updateTitleController.text.trim().isNotEmpty &&
                    _updateSubTitleController.text.trim().isNotEmpty) {
                  todoList[index].title = _updateTitleController.text.trim();
                  todoList[index].description =
                      _updateSubTitleController.text.trim();

                  _updateTitleController.clear();
                  _updateSubTitleController.clear();

                  Navigator.pop(context);
                  if (mounted) {
                    setState(() {});
                  }
                }
              },
              child: const Text("UPDATE"),
            ),
          ],
        );
      },
    );
  }

  // bool _isDarkMode = false;

  // void _toggleTheme() {
  //   setState(() {
  //     _isDarkMode = !_isDarkMode;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To do App"),
        actions: [
          IconButton(
              onPressed: () {
                todoList.clear();
                if (mounted) {
                  setState(() {});
                }
              },
              icon: const Icon(Icons.playlist_remove)),
          // Switch(
          //   value: _isDarkMode,
          //   onChanged: (value) {
          //     _toggleTheme(); // Call the toggleTheme function on switch change
          //   },
          // ),
        ],
      ),
      body: ListView.separated(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return ListTile(
            onLongPress: () {
              todoList[index].isDone = !todoList[index].isDone!;
              setState(() {});
            },
            leading: todoList[index].isDone!
                ? const Icon(Icons.done)
                : const Icon(Icons.close),
            title: Text(todoList[index].title ?? ''),
            subtitle: Text(todoList[index].description ?? ""),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    showUpdateTodoBottomSheet(index);
                  },
                  icon: const Icon(Icons.edit),
                ),
                IconButton(
                  onPressed: () {
                    todoList.removeAt(index);
                    if (mounted) {
                      setState(() {});
                    }
                  },
                  icon: const Icon(Icons.delete_forever_rounded),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => const Divider(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showTodoBottomSheet();
          // todoList.add(Todo("title", "description", false));
          // if (mounted) {
          //   // chokher samne visible ache kina.thakle setState
          //   setState(() {});
          // }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class Todo {
  String? title, description;
  bool? isDone;
  Todo(this.title, this.description, this.isDone);
}
