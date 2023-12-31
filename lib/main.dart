import 'package:blog_explorer/model/blog_model.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'screens/blog_list_screen.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BlogModelAdapter());
  await Hive.openBox<BlogModel>('blogs');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blog Explorer',
      home: BlogListScreen(),
    );
  }
}
