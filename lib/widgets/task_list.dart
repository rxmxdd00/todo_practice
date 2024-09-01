import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/task_data.dart';
import 'task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            var task = taskData.tasks[index];
            return TaskTile(
                title: task.name,
                isChecked: task.isDone,
                toggleCheckbox: (value) {
                  taskData.updateTask(task);
                },
                longpressedCallback: () {
                  taskData.deletTask(task);
                });
          },
          itemCount: Provider.of<TaskData>(context).getCount(),
        );
      },
    );
  }
}
