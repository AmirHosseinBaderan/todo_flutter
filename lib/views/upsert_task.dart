import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_flutter/controllers/task.dart';
import 'package:todo_flutter/models/task.dart';
import 'package:todo_flutter/widgets/core/input_text.dart';

import '../app.dart';

class UpsertTask extends StatelessWidget {
  final description = TextEditingController();
  final note = TextEditingController();
  final formKey = GlobalKey<FormState>();

  final taskController = Get.find<TaskController>();

  String title = 'Creat New Task';

  @override
  Widget build(BuildContext context) {
    App.changeStatusbarColor(Colors.white, Brightness.dark);
    if (taskController.currentTask.value.text != null) {
      title = 'Edit `${taskController.currentTask.value.title}`';
      description.text = taskController.currentTask.value.text.toString();
      note.text = taskController.currentTask.value.title.toString();
    }
    return Form(
        key: formKey,
        child: Scaffold(
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
                      child: Text(title,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
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
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        taskController.insertTask(TaskModel(
                            isComplete: false,
                            text: description.text,
                            title: note.text));
                        Get.back();
                      }
                    },
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
        ));
  }
}
