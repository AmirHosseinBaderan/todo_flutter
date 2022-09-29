import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      color: Colors.lightBlue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ))
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 40, top: 20),
            child: const CircleAvatar(
              backgroundColor: Colors.white,
              child: Center(
                child: Icon(Icons.paste),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 50, top: 15),
            child: const Text('All',
                style: TextStyle(color: Colors.white, fontSize: 20)),
          ),
          Container(
            margin: const EdgeInsets.only(left: 50, top: 5),
            child: const Text('25 Tasks',
                style: TextStyle(color: Colors.white, fontSize: 15)),
          )
        ],
      ),
    );
  }
}
