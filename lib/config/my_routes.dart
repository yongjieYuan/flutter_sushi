import 'package:flutter/cupertino.dart';
import 'package:suhi/pages/intro_page.dart';
import 'package:suhi/pages/menu_page.dart';

typedef RouterCallBack = Widget Function(BuildContext context);

Map<String, RouterCallBack> MyRoutesConfig = {
  "/intropage": (context) => const IntroPage(),
  "/menupage": (context) => const MenuPage(),
};

class MyRoutes {
  static String introPage = "/intropage";
  static String menuPage = "/menupage";
}