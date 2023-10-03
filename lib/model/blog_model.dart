import 'package:hive_flutter/hive_flutter.dart';
part 'blog_model.g.dart';

@HiveType(typeId: 0)
class BlogModel extends HiveObject {
  @HiveField(0)
  late String title;

  @HiveField(1)
  late String content;

  // Other fields you want to store

  BlogModel({required this.title, required this.content});
}
