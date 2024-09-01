import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool? isChecked;
  final String? title;
  final ValueChanged<bool?>? toggleCheckbox;
  final VoidCallback? longpressedCallback;
  TaskTile(
      {this.isChecked,
      this.title,
      this.toggleCheckbox,
      this.longpressedCallback});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longpressedCallback,
      title: Text(
        title!,
        style: TextStyle(
            decoration:
                isChecked! ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: toggleCheckbox,
      ),
    );
  }
}
