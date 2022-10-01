import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:todo_flutter/models/task.dart';

class TaskController extends GetxController {
  var tasks = <TaskModel>[].obs;
  Rx<TaskModel> currentTask =
      TaskModel(isComplete: false, text: null, title: null).obs;

  @override
  void onInit() {
    var storage = GetStorage();
    var readItems = storage.read('tasks');
    if (readItems != null) {
      tasks.clear();
      for (var item in readItems) {
        tasks.add(TaskModel.fromJson(item));
      }
    }

    ever(tasks, (value) {
      storage.write('tasks', tasks.toJson());
    });

    super.onInit();
  }

  void insertTask(TaskModel task) => tasks.add(task);

  void completeTask(int index, bool compelete) {
    var task = tasks[index];
    task.isComplete = compelete;
    tasks[index] = task;
  }

  void updateTask(int index, TaskModel task) {
    tasks[index] = task;
  }

  void deleteTask(int index) {
    tasks.removeAt(index);
  }
}
