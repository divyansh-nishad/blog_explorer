import 'package:blog_explorer/model/blog_model.dart';
import 'package:blog_explorer/service/api_service.dart';
import 'package:blog_explorer/widgets/blog_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hive_flutter/hive_flutter.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        // title: Text('Subspace'),
        backgroundColor: Colors.grey.shade800,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(4.0, 0, 0, 0),
          child: SvgPicture.network(
            'https://subspace.money/index_files/subspace_hor.svg',
            width: 80,
            height: 30,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu_rounded),
            onPressed: () {},
          ),
        ],
      ),
      body: blogBox.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : BlogList(blogBox: blogBox),
    );
  }
}
