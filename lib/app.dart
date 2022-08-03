import 'package:flutter/material.dart';
import 'package:todo_gdsc_sharing/model/Task.dart';
import 'package:todo_gdsc_sharing/widgets/AppDialog.dart';
import 'package:todo_gdsc_sharing/widgets/Header.dart';
import 'package:todo_gdsc_sharing/widgets/TaskItem.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  TextEditingController controller = TextEditingController();
  final List<Task> listTask = [
    Task(content: "di choi voi nguoi iu"),
    Task(content: "di choi voi nguoi iu 1"),
    Task(content: "di choi voi nguoi iu 2"),
  ];

  void addTaskHandler(String content) {
    //handler add new task to list
    if (content.trim().isNotEmpty) {
      setState(() {
        listTask.add(Task(content: content));
      });
    }
  }

  void toggleStatusHandler(Task task, bool? newStatus) {
    // index of task we want toggle
    int index = listTask.indexOf(task);
    setState(() {
      listTask[index].status = newStatus!;
    });
  }

  void openTaskDialogHandler() {
    //open the dialog to add new task
    showDialog(
        context: context,
        builder: (context) {
          return AppDialog(
            onPress: addTaskHandler,
            controller: controller,
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          openTaskDialogHandler();
        },
      ),
      body: Column(children: [
        const Header(),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return TaskItem(
                task: listTask[index],
                toggleStatusHandler: toggleStatusHandler,
              );
            },
            itemCount: listTask.length,
          ),
        )
      ]),
    );
  }
}
