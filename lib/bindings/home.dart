import 'package:get/get.dart';
import 'package:todo_flutter/controllers/navigation.dart';
import 'package:todo_flutter/controllers/task.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NavigationController());
    Get.lazyPut(() => TaskController());
  }
}
