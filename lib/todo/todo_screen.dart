import 'package:flutter/material.dart';
import 'package:todo_cubit/todo/components/todo_tile.dart';

class TodoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo'),
      ),
      body: TodoTile(
        title: 'Read an Article',
        isDone: true,
      ),
    );
  }
}
