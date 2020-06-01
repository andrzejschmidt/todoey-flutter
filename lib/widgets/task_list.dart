import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './task_tile.dart';
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
            final task = taskData.tasks[index];
            return TaskTile(
              taskName: task.taskName,
              isChecked: task.isCompleted,
              toggleDone: (isChecked) {
                taskData.updateTask(task);
              },
              removeFromList: () {
                taskData.removeTask(task);
              },
            );
          },
        );
      },
    );
  }
}
