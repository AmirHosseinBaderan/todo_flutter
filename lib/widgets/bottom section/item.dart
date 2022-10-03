import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_flutter/controllers/task.dart';
import 'package:todo_flutter/models/task.dart';

class TaskItem extends StatelessWidget {
  final int index;
  final TaskModel task;
  final taskController = Get.find<TaskController>();

  TaskItem({super.key, required this.index, required this.task});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Dismissible(
        key: Key(index.toString()),
        background: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.redAccent,
          ),
          child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                      'Delete',
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(Icons.delete, color: Colors.white)
                  ],
                ),
              )),
        ),
        secondaryBackground: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.lightGreen,
          ),
          child: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(task.isComplete ? 'Un Check' : 'Check',
                      style: const TextStyle(color: Colors.white)),
                  Icon(task.isComplete ? Icons.close : Icons.check,
                      color: Colors.white)
                ],
              ),
            ),
          ),
        ),
        confirmDismiss: (direction) async {
          switch (direction) {
            case DismissDirection.startToEnd:
              taskController.deleteTask(index);
              break;
            case DismissDirection.endToStart:
              taskController.completeTask(index, !task.isComplete);
              break;
            default:
              break;
          }
          return false;
        },
        onDismissed: (direction) {
          taskController.update();
        },
        child: ListTile(
          title: Text(task.title.toString()),
          subtitle: Text(task.text.toString()),
          trailing: Checkbox(
            onChanged: (value) =>
                taskController.completeTask(index, value ?? false),
            value: task.isComplete,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          ),
          onTap: () {
            taskController.currentTask.value = task;
            Get.toNamed('/upsertTask');
          },
          onLongPress: () {
            Get.defaultDialog(
                title: 'Delete `${task.title}`',
                middleText: 'Are you sure to delete `${task.title}`?',
                textConfirm: 'Delete',
                textCancel: 'Cancel',
                confirmTextColor: Colors.white,
                onConfirm: () {
                  taskController.deleteTask(index);
                  Get.back();
                  Get.snackbar('Delete `${task.title}`',
                      '`${task.title}` Deleted successfuly',
                      icon: const Icon(Icons.delete),
                      isDismissible: true,
                      snackPosition: SnackPosition.BOTTOM);
                },
                onCancel: () {
                  Get.back();
                });
          },
        ),
      ),
    );
  }
}
