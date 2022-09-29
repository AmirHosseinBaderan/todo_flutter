import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_flutter/widgets/core/input_text.dart';

import '../app.dart';

class UpsertTask extends StatelessWidget {
  final description = TextEditingController();
  final note = TextEditingController();

  @override
  Widget build(BuildContext context) {
    App.changeStatusbarColor(Colors.white, Brightness.dark);
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Container(
                  margin: const EdgeInsets.only(left: 50),
                  child: const Text('Create New Task',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                      )),
                )),
                IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.close))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: InputOutline(
              controller: note,
              hint: 'Task Note',
              lable: 'Note',
              isRequired: true,
              errorText: 'Input your task note!',
              maxLines: 1,
              prefixIcon: const Icon(Icons.bookmark_border),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: InputOutline(
              maxLines: 6,
              isRequired: true,
              hint: 'Description',
              lable: 'What are you planing?',
              errorText: 'Input your task description!',
              controller: description,
              prefixIcon: const Icon(Icons.newspaper),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [Text('Save'), Icon(Icons.save)],
                  ),
                )),
          )
        ],
      )),
    );
  }
}
