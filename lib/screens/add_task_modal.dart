import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class AddTaskModal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
      padding: EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.lightBlue[300],
              fontSize: 26.0,
            ),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (value) {
              newTaskTitle = value;
            },
          ),
          SizedBox(
            height: 10.0,
          ),
          FlatButton(
            color: Colors.lightBlue[300],
            onPressed: () {
              Provider.of<TaskData>(context, listen: false)
                  .addNewTask(newTaskTitle);
              Navigator.pop(context);
            },
            child: Text(
              'Add',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
