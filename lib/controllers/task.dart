import 'package:get/get.dart';
import 'package:todo_flutter/models/task.dart';

class TaskController extends GetxController {
  var tasks = <TaskModel>[].obs;
  Rx<TaskModel> currentTask =
      TaskModel(isComplete: false, text: null, title: null).obs;

  void insertTask(TaskModel task) => tasks.add(task);

  void completeTask(int index, bool compelete) {
    var task = tasks[index];
    task.isComplete = compelete;
    tasks[index] = task;
  }

  void updateTask(int index, TaskModel task) {
    tasks[index] = task;
  }
}
