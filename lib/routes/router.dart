import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:todo_flutter/bindings/home.dart';
import 'package:todo_flutter/views/home.dart';

class Routes {
  static List<GetPage> get routes =>
      [GetPage(name: '/home', page: () => Home(), binding: HomeBindings())];

  static String get initialRoute => '/home';
}
