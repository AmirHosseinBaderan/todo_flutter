import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_flutter/app.dart';
import 'package:todo_flutter/controllers/navigation.dart';
import 'package:todo_flutter/controllers/task.dart';
import 'package:todo_flutter/models/task.dart';
import 'package:todo_flutter/widgets/home/bottom_section.dart';
import 'package:todo_flutter/widgets/home/top_section.dart';

class Home extends StatelessWidget {
  final navController = Get.find<NavigationController>();
  final taskController = Get.find<TaskController>();

  @override
  Widget build(BuildContext context) {
    App.changeStatusbarColor(Colors.lightBlue, Brightness.light);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          taskController.currentTask.value =
              TaskModel(isComplete: false, text: null, title: null);
          Get.toNamed('/upsertTask')?.then((value) {
            App.changeStatusbarColor(Colors.lightBlue, Brightness.light);
          });
        },
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: Stack(
            alignment: Alignment.bottomCenter,
            children: [TopSection(), const BottomSection()]),
      ),
    );
  }
}
