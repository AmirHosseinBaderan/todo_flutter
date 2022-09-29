import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_flutter/bindings/home.dart';
import 'package:todo_flutter/views/home.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(name: '/home', page: () => Home(), binding: HomeBindings())
      ],
      initialRoute: '/home',
    );
  }
}
