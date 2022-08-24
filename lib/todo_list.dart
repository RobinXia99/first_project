import 'package:first_project/todomodel.dart';
import 'package:flutter/material.dart';

class TodoList extends StatefulWidget {
  final List<TodoModel> list;
  


  TodoList(this.list);

  @override
  State<TodoList> createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10.0, top: 20.0, right: 10.0, bottom: 20.0),
      child: ListView.builder(
          itemCount: widget.list.length,
          itemBuilder: (context, index) {
            return Card(child: ListTile(
              leading: ElevatedButton(
                onPressed: null,
                child: Text(widget.list[index].done ? "Done" : "Not done"),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(widget.list[index].done ? Colors.green : null),
                  foregroundColor: MaterialStateProperty.all(Colors.white)
                ),
              ),
              title: Text(widget.list[index].title),
              subtitle: Text(widget.list[index].comment),
              trailing: Text(widget.list[index].date),
              tileColor: Colors.grey.withOpacity(0.5),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            ),);
          }),
    );
  }
}
