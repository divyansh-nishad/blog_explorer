import 'package:flutter/material.dart';
import '../model/blog_model.dart';

class BlogDetailScreen extends StatelessWidget {
  final String img;
  final String title;
  BlogDetailScreen(this.img, this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.grey.shade800,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Display detailed blog content here
              ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(img)),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              const Text(
                '''
          Title: Default Blog Content
        
          Are you new to the world of blogging? Starting a blog can be an exciting but challenging endeavor. Whether you're passionate about sharing your thoughts, promoting a hobby, or building an online presence, these 10 tips for beginner bloggers will help you get started on the right foot.
        
          1. Choose Your Niche Wisely
        
          Before you start blogging, think about your interests and expertise. Select a niche that you're passionate about and have knowledge in. This will make it easier to create content consistently and engage your audience.
        
          2. Create High-Quality Content
        
          Quality is key in the blogging world. Write informative, well-researched, and engaging posts. Proofread your content for grammar and spelling errors, and use captivating headlines to grab your readers' attention.
        
          3. Consistency Is Key
        
          Establish a regular posting schedule. Whether it's once a week, bi-weekly, or monthly, consistency helps you build a loyal readership.
        
          4. Use Eye-catching Images
        
          Include relevant images in your blog posts to break up the text and make your content more visually appealing. Use high-resolution images that relate to your topic.
        
          5. Interact with Your Audience
        
          Engage with your readers through comments and social media. Respond to comments on your blog and actively participate in discussions related to your niche.
        
          6. SEO Basics
        
          Learn the basics of search engine optimization (SEO) to improve your blog's visibility on search engines like Google. Use relevant keywords, meta descriptions, and alt tags for images.
        
          7. Network with Other Bloggers
        
          Building relationships with fellow bloggers can help you grow your audience and gain valuable insights. Leave thoughtful comments on their posts and consider collaborating on projects.
        
          8. Promote Your Blog
        
          Don't rely solely on organic traffic. Share your blog posts on social media, in relevant online communities, and consider email marketing to reach a wider audience.
        
          9. Analyze and Adapt
        
          Use analytics tools to track your blog's performance. Pay attention to which posts are popular and adjust your content strategy accordingly.
        
          10. Be Patient and Persistent
        
          Blogging success takes time. Don't be discouraged if you don't see immediate results. Stay persistent, keep improving your skills, and continue creating valuable content.
        
          Starting a blog can be a fulfilling journey. Remember that your blog is a reflection of your passions and knowledge, so enjoy the process and stay true to your unique voice.
          ''',
                style: TextStyle(color: Colors.white, fontSize: 18),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
