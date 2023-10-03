import 'package:flutter/material.dart';
import '../model/blog_model.dart';

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
            Image.network(blog.content),
            const Text(
                'Are you new to the world of blogging? Starting a blog can be an exciting but challenging endeavor. Whether you\'re passionate about sharing your thoughts, promoting a hobby, or building an online presence, these 10 tips for beginner bloggers will help you get started on the right foot.'),
          ],
        ),
      ),
    );
  }
}
