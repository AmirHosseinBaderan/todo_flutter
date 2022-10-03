import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_flutter/controllers/task.dart';
import 'package:todo_flutter/widgets/bottom%20section/item.dart';

class ItemList extends StatelessWidget {
  final taskController = Get.find<TaskController>();

  ItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 5, right: 5),
      child: Obx(() => ListView.separated(
            itemBuilder: (context, index) =>
                TaskItem(index: index, task: taskController.tasks[index]),
            separatorBuilder: (context, index) => const SizedBox(
              height: 5,
            ),
            itemCount: taskController.tasks.length,
          )),
    );
  }
}
