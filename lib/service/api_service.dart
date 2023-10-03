import 'dart:async';
import 'dart:convert';
import 'package:blog_explorer/model/blog_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http/http.dart' as http;

Future<void> fetchBlogs() async {
  const String url = 'https://intent-kit-16.hasura.app/api/rest/blogs';
  const String adminSecret =
      '32qR4KmXOIpsGPQKMqEJHGJS27G5s7HdSKO3gdtQd2kv5e852SiYwWNfxkZOBuQ6';

  try {
    // print('Fetching blogs...');
    final response = await http.get(Uri.parse(url), headers: {
      'x-hasura-admin-secret': adminSecret,
    });
    // print('Response status: ${response.statusCode}');

    if (response.statusCode == 200) {
      // print(jsonDecode(response.body));
      final Map<String, dynamic> responseData = json.decode(response.body);
      // print(responseData['blogs']);

      if (responseData.containsKey('blogs')) {
        final List<dynamic> blogs = responseData['blogs'];
        // print(blogs);
        final blogBox = Hive.box<BlogModel>('blogs');
        blogBox.clear(); // Clear existing data
        blogs.forEach((blog) {
          blogBox
              .add(BlogModel(title: blog['title'], content: blog['image_url']));
        });
      } else {
        throw Exception('Invalid API response: Blogs key not found');
      }
    } else {
      throw Exception('Failed to load blogs');
    }
  } catch (e) {
    print('Error: $e');
    // Handle error, show user-friendly message
  }
}
