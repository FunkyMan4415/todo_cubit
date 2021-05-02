import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_cubit/todo/cubit/todo_cubit.dart';
import 'package:todo_cubit/todo/todo_screen.dart';

void main() {
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoCubit()..loadTodos(),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.lightGreen,
        ),
        home: TodoScreen(),
      ),
    );
  }
}
