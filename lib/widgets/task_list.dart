import 'package:flutter/material.dart';
import './task_tile.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          itemCount: taskData.taskCount,
          itemBuilder: (context, index) {
            return TaskTile(
                taskName: taskData.tasks[index].taskName,
                isChecked: taskData.tasks[index].isCompleted,
                toggleDone: (isChecked) {
                  // setState(() {
                  //   taskDatatasks.[index].toggleComplete();
                  // });
                });
          },
        );
      },
    );
  }
}
