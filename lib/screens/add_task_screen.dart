import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app_tutorial/models/task.dart';

import '../models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  final dynamic addTaskCallback;
  AddTaskScreen({required this.addTaskCallback});

  @override
  Widget build(BuildContext context) {
    TextEditingController titleController = TextEditingController();
    String? name;
    bool defIsDone = false;
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            textAlign: TextAlign.center,
            'Add Task',
            style: TextStyle(color: Colors.lightBlueAccent, fontSize: 40.0),
          ),
          const SizedBox(
            height: 20.0,
          ),
          TextField(
            onChanged: (val) {
              name = val;
            },
            controller: titleController,
            autofocus: true,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            height: 20.0,
          ),
          TextButton(
            onPressed: addTaskCallback!,
            style: const ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll<Color>(Colors.lightBlueAccent),
            ),
            child: const Text(
              'Add',
              style: TextStyle(fontSize: 20.0, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
