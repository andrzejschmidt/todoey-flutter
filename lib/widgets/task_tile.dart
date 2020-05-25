import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({this.taskName, this.isChecked = false, this.toggleDone});
  final String taskName;
  final bool isChecked;
  Function toggleDone;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskName,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlue[300],
        onChanged: (value) {
          toggleDone(value);
        },
      ),
    );
  }
}
