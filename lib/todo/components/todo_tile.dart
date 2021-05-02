import 'package:flutter/material.dart';

class TodoTile extends StatelessWidget {
  const TodoTile({
    Key? key,
    required this.title,
    required this.isDone,
  }) : super(key: key);

  final String title;
  final bool isDone;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style:
                TextStyle(fontSize: 20, color: isDone ? Colors.black38 : null),
          ),
          Icon(
            isDone
                ? Icons.check_circle_outline_rounded
                : Icons.radio_button_off_rounded,
            color: isDone ? Theme.of(context).primaryColor : Colors.black38,
            size: 35,
          )
        ],
      ),
    );
  }
}
