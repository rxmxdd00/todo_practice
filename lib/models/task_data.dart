import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:todo_app_tutorial/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Go for a walk'),
    Task(name: 'Take a bath'),
    Task(name: 'Learn Coding'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  addTasks(String name) {
    final task = Task(name: name);
    _tasks.add(task);
    notifyListeners();
  }

  int getCount() {
    return _tasks.length;
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deletTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
