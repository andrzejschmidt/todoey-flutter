import 'package:flutter/material.dart';
import './task_tile.dart';
import '../models/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(
      taskName: 'Do laundry',
    ),
    Task(
      taskName: 'Learn Flutter',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
            taskName: tasks[index].taskName,
            isChecked: tasks[index].isCompleted,
            toggleDone: (isChecked) {
              setState(() {
                tasks[index].toggleComplete();
              });
            });
      },
    );
  }
}
