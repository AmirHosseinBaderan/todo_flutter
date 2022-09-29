import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_flutter/controllers/navigation.dart';

class Home extends StatelessWidget {
  final navController = Get.find<NavigationController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo App'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        tooltip: 'Add New Item',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Obx(() => AnimatedBottomNavigationBar(
            icons: const [
              Icons.home,
              Icons.favorite,
              Icons.delete,
              Icons.access_alarm
            ],
            activeIndex: navController.navIndex.value,
            gapLocation: GapLocation.center,
            notchSmoothness: NotchSmoothness.softEdge,
            leftCornerRadius: 20,
            rightCornerRadius: 20,
            backgroundColor: Colors.blue,
            activeColor: Colors.white,
            onTap: (index) {
              navController.changeNav(index);
            },
            //other params
          )),
    );
  }
}
