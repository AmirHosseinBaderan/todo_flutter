import 'package:get/get.dart';
import 'package:todo_flutter/controllers/navigation.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NavigationController());
  }
}
