import 'package:flutter/foundation.dart';
import 'package:todo/models/task.dart';
import 'package:flutter/material.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Study Flutter'),
    Task(name: 'Islamic'),
    Task(name: 'English course'),
    Task(name: 'Study'),
    Task(name: 'Sports'),
  ];

  bool isDone;

  int get taskCounter {
    return tasks.length;
  }

  void addTask(newTaskTitle) {
    final task = Task(name: newTaskTitle);
    tasks.add(task);

    notifyListeners();
  }

  void updataTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    tasks.remove(task);
    notifyListeners();
  }
}
