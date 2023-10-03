import 'package:blog_explorer/model/blog_model.dart';
import 'package:blog_explorer/widgets/blog_tile.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class BlogList extends StatelessWidget {
  Box<BlogModel> blogBox;
  BlogList({super.key, required this.blogBox});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: blogBox.length,
      itemBuilder: (context, index) {
        final BlogModel blog = blogBox.getAt(index)!;
        // print(blog.content);
        return BlogTile(img: blog.content, title: blog.title);

      },
    );
  }
}
