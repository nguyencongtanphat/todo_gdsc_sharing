import 'package:flutter/material.dart';
import 'package:todo_gdsc_sharing/widgets/AppDialog.dart';
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
          return AppDialog();
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
