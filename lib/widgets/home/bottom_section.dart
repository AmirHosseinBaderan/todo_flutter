import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:todo_flutter/widgets/bottom%20section/item_list.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: Get.height * 0.7,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: ItemList(),
    );
  }
}
