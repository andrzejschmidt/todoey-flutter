class Task {
  Task({this.taskName, this.isCompleted = false});
  String taskName;
  bool isCompleted;

  toggleComplete() => isCompleted = !isCompleted;
}
