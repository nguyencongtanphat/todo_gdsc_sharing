import 'package:flutter/material.dart';

class AppDialog extends StatelessWidget {
  const AppDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        "Add new Task",
      ),
      content: TextFormField(
        style: const TextStyle(
          fontSize: 18,
        ),
        decoration: const InputDecoration(hintText: "Type task here!!!"),
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text(
              "Save",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 217, 196, 2),
                fontSize: 18,
              ),
            )),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text(
            "Close",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.red,
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
