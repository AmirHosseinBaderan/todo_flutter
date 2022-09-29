import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_flutter/app.dart';
import 'package:todo_flutter/controllers/navigation.dart';
import 'package:todo_flutter/widgets/home/bottom_section.dart';
import 'package:todo_flutter/widgets/home/top_section.dart';

class Home extends StatelessWidget {
  final navController = Get.find<NavigationController>();

  @override
  Widget build(BuildContext context) {
    App.changeStatusbarColor(Colors.lightBlue, Brightness.light);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed('/upsertTask')?.then((value) {
            App.changeStatusbarColor(Colors.lightBlue, Brightness.light);
          });
        },
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: Stack(
            alignment: Alignment.bottomCenter,
            children: const [TopSection(), BottomSection()]),
      ),
    );
  }
}
