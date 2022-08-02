import 'package:flutter/material.dart';
import 'package:todo_gdsc_sharing/widgets/Header.dart';
import 'package:todo_gdsc_sharing/widgets/TaskItem.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  void addNewTaskHandler() {
    showDialog(
        context: context,
        builder: (context) {
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
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          addNewTaskHandler();
        },
      ),
      body: Column(children: [
        const Header(),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return const TaskItem();
            },
            itemCount: 5,
          ),
        )
      ]),
    );
  }
}