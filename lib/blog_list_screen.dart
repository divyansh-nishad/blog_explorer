import 'dart:async';
import 'dart:convert';
import 'package:blog_explorer/blog_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'blog_detail_screen.dart';

class BlogListScreen extends StatefulWidget {
  @override
  _BlogListScreenState createState() => _BlogListScreenState();
}

class _BlogListScreenState extends State<BlogListScreen> {
  late Box<BlogModel> blogBox;

  @override
  void initState() {
    super.initState();
    blogBox = Hive.box<BlogModel>('blogs');
    if (blogBox.isEmpty) {
      fetchBlogs();
    }
  }

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
            blogBox.add(
                BlogModel(title: blog['title'], content: blog['image_url']));
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        // title: Text('Subspace'),
        backgroundColor: Colors.grey.shade800,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 0, 0, 0),
          child: Image.network(
              'https://subspace.money/index_files/subspace_hor.svg',
              width: 60,
              height: 20),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.menu_rounded),
            onPressed: () {},
          ),
        ],
      ),
      body: blogBox.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: blogBox.length,
              itemBuilder: (context, index) {
                final BlogModel blog = blogBox.getAt(index)!;
                // print(blog.content);
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Image.network(
                        blog.content,
                        height: MediaQuery.of(context).size.height * 0.3,
                        width: MediaQuery.of(context).size.width * 0.8,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                          MediaQuery.of(context).size.width * 0.1,
                          0,
                          MediaQuery.of(context).size.width * 0.1,
                          16),
                      child: Text(
                        blog.title,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                  ],
                );
              },
            ),
    );
  }
}
