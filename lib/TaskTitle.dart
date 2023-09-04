
import 'package:flutter/material.dart';

class TaskTitle extends StatelessWidget {
  final String taskTitle;
  final bool isChecked;
  final Function(bool) function;
  final Function delete;

  TaskTitle({
    required this.taskTitle,
    required this.isChecked,
    required this.function,
    required this.delete
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Checkbox(
        value: isChecked,
        onChanged: (s){
          function(false);
        },
      ),
      title: Text(
        taskTitle,
        style: TextStyle(decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
    );
  }
}

