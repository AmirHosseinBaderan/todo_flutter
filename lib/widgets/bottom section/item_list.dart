import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_flutter/controllers/task.dart';
import 'package:todo_flutter/widgets/bottom%20section/item.dart';

Widget itemList() {
  final taskController = Get.find<TaskController>();

  return Container(
    margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
    child: Obx(() => ListView.separated(
        itemBuilder: (context, index) =>
            taskItem(index, taskController.tasks[index]),
        separatorBuilder: (context, index) => const Divider(
              height: 0.5,
              color: Colors.grey,
            ),
        itemCount: taskController.tasks.length)),
  );
}
