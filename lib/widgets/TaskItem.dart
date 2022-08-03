import 'package:flutter/material.dart';
import 'package:todo_gdsc_sharing/model/Task.dart';

class TaskItem extends StatelessWidget {
  final Task task;
  final Function toggleStatusHandler;
  const TaskItem(
      {Key? key, required this.task, required this.toggleStatusHandler})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        onChanged: (newValue) {
          toggleStatusHandler(task, newValue);
        },
        value: task.status,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      title: Text(
        task.content,
        style: TextStyle(
          fontSize: 24,
          color: task.status ? Colors.red : Colors.black,
          decoration:
              task.status ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
    );
  }
}
