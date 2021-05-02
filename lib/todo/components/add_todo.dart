import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_cubit/todo/cubit/todo_cubit.dart';

class AddTodo extends StatelessWidget {
  final _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: TextField(
            controller: _textController,
          ),
        ),
        const SizedBox(width: 16),
        ElevatedButton(
          onPressed: () =>
              context.read<TodoCubit>().addTodo(_textController.text),
          child: const Text('Add Todo'),
        )
      ],
    );
  }
}
