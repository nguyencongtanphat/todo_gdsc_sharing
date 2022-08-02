import 'package:flutter/material.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        onChanged: (newValue) {},
        value: false,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      title: const Text(
        "di an banh",
        style: TextStyle(
          fontSize: 24,
        ),
      ),
    );
  }
}
