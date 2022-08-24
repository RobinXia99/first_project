import 'package:first_project/list.dart';
import 'package:first_project/new_todo.dart';
import 'package:first_project/todo_list.dart';
import 'package:first_project/todomodel.dart';
import "package:flutter/material.dart";

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.amber),
      title: "It Högskolan Flutter App",
      home: MyHomePage(
        "ToDo's",
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String appBarTitel;
  MyHomePage(this.appBarTitel);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<TodoModel> todoList = [];

  void showTodoSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => GestureDetector(
              child: NewTodo(addTodoItem),
            ));
  }

  void addTodoItem(String title, String comment, bool done, String date) {
    final newTodoItem = TodoModel(title, comment, done, date);

    setState(() {
      todoList.add(newTodoItem);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.appBarTitel),
        ),
        body: Center(
          child: TodoList(todoList),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () => showTodoSheet(context), child: Icon(Icons.add,),
        ));
  }
}
