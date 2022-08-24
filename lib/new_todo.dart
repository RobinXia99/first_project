import 'package:first_project/todomodel.dart';
import 'package:flutter/material.dart';

class NewTodo extends StatefulWidget {
  final Function addTodo;

  NewTodo(this.addTodo);

  @override
  State<NewTodo> createState() => _NewTodoState();
}

class _NewTodoState extends State<NewTodo> {
  final titleController = TextEditingController();
  final commentController = TextEditingController();
  final dateController = TextEditingController();

  void callback() {
    widget.addTodo(titleController.text, commentController.text, false, dateController.text);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TextField(
          decoration: InputDecoration(labelText: "Title"), controller: titleController,
        ),
        TextField(
          decoration: InputDecoration(labelText: "Comment"), controller: commentController,
        ),
         TextField(
          decoration: InputDecoration(labelText: "Date"), controller: dateController,
        ),
        ElevatedButton(onPressed: callback, child: Text("Add TodoItem"))
      ],
    );
  }
}
