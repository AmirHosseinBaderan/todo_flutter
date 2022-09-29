import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_flutter/controllers/task.dart';
import 'package:todo_flutter/models/task.dart';

Widget taskItem(int index, TaskModel task) {
  final taskController = Get.find<TaskController>();

  return ListTile(
    title: Text(task.title.toString()),
    subtitle: Text(task.text.toString()),
    trailing: Checkbox(
      onChanged: (value) => taskController.completeTask(index, value ?? false),
      value: task.isComplete,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    ),
    onTap: () {
      taskController.currentTask.value = task;
      Get.toNamed('/upsertTask');
    },
    onLongPress: () {},
  );
}
