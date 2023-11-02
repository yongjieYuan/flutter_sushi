import 'package:flutter/material.dart';
import 'package:suhi/config/my_routes.dart';
import 'package:suhi/pages/intro_page.dart';
import 'package:suhi/sushi_library/nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: Nav.navKey,
      routes: MyRoutesConfig,
      home: IntroPage(),
    );
  }
}
