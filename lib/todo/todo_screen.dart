import 'package:flutter/material.dart';
import 'package:todo_cubit/todo/components/add_todo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_cubit/todo/components/todo_list.dart';
import 'package:todo_cubit/todo/cubit/todo_cubit.dart';

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
            Builder(
              builder: (context) {
                final state = context.watch<TodoCubit>().state;
                return state.maybeMap(
                  loaded: (state) => state.todos.isEmpty
                      ? const Text('Nothing to show')
                      : Expanded(child: TodoList()),
                  orElse: () => const Center(
                    child: Text('Should not displayed'),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
