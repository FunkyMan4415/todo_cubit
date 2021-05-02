import 'package:flutter/material.dart';

class AddTodo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          flex: 2,
          child: TextField(),
        ),
        const SizedBox(width: 16),
        ElevatedButton(
          onPressed: () => null,
          child: const Text('Add Todo'),
        )
      ],
    );
  }
}
