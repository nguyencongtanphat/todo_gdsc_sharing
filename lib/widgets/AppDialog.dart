import 'package:flutter/material.dart';

class AppDialog extends StatelessWidget {
  final TextEditingController? controller;
  final Function? onPress;
  const AppDialog({
    Key? key,
    required this.controller,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        "Add new Task",
      ),
      content: TextFormField(
        controller: controller,
        style: const TextStyle(
          fontSize: 18,
        ),
        decoration: const InputDecoration(hintText: "Type task here!!!"),
      ),
      actions: [
        TextButton(
            onPressed: () {
              if (onPress != null) {
                onPress!(controller?.text);
              }
              controller?.clear();
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
