import 'package:flutter/material.dart';
import 'package:todo_app_bootcamp/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To Do App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
