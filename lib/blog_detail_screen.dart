import 'package:flutter/material.dart';
import 'blog_model.dart';

class BlogDetailScreen extends StatelessWidget {
  final BlogModel blog;

  BlogDetailScreen({required this.blog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(blog.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Display detailed blog content here
            Text(blog.content),
          ],
        ),
      ),
    );
  }
}
