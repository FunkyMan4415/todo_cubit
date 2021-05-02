import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_cubit/todo/components/todo_tile.dart';
import 'package:todo_cubit/todo/cubit/todo_cubit.dart';

class TodoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final state = context.watch<TodoCubit>().state;

    return state.maybeMap(
      loaded: (state) => ListView.separated(
          itemBuilder: (context, index) => TodoTile(
                title: state.todos[index].task,
                isDone: state.todos[index].isDone,
                index: index,
              ),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: state.todos.length),
      orElse: () => const SizedBox.shrink(),
    );
  }
}
