import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'blog_list_screen.dart';

void main() async {
  await Hive.initFlutter();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blog Explorer',
      home: Container(),
    );
  }
}
