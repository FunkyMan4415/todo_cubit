import 'package:flutter/material.dart';
import 'package:todo_cubit/todo/components/addTodo.dart';
import 'package:todo_cubit/todo/components/todo_tile.dart';

class TodoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            AddTodo(),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
