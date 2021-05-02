import 'package:flutter/material.dart';
import 'package:todo_cubit/todo/todo_screen.dart';

void main() {
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: TodoScreen(),
    );
  }
}
