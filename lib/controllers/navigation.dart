import 'package:get/state_manager.dart';

class NavigationController extends GetxController {
  RxInt navIndex = 0.obs;
  void changeNav(int index) => navIndex.value = index;
}
