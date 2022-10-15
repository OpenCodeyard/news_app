import 'package:flutter/material.dart';

import '../helper/news.dart';
import '../models/article_model.dart';
import 'article_view.dart';

class CategoryView extends StatefulWidget {
  final String category;

  const CategoryView({Key? key, required this.category}) : super(key: key);

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  List<ArticleModel> articles = [];
  bool _loading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCategoryNews();
  }

  getCategoryNews() async {
    CategoryNewsClass newsClass = CategoryNewsClass();
    await newsClass.getNews(widget.category);
    articles = newsClass.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "News",
              style: TextStyle(color: Colors.black),
            ),
            Text(
              "App",
              style: TextStyle(color: Colors.blue),
            )
          ],
        ),
        actions: [
          Opacity(
            opacity: 0,
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: const Icon(Icons.save)),
          )
        ],
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: _loading
          ? Center(
              child: Container(
                child: const CircularProgressIndicator(),
              ),
            )
          : SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    /// Blogs
                    Container(
                      padding: const EdgeInsets.only(top: 16),
                      child: ListView.builder(
                          itemCount: articles.length,
                          shrinkWrap: true,
                          physics: const ClampingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return BlogTile(
                              imageUrl: articles[index].urlToImage,
                              title: articles[index].title,
                              description: articles[index].description,
                              url: articles[index].url,
                            );
                          }),
                    )
                  ],
                ),
              ),
            ),
    );
  }
}

class BlogTile extends StatelessWidget {
  final String imageUrl, title, description, url;

  const BlogTile(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.description,
      required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ArticleView(
                      blogUrl: url,
                    )));
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.network(imageUrl)),
            const SizedBox(
              height: 8,
            ),
            Text(
              title,
              style: const TextStyle(
                  fontSize: 18.5,
                  color: Colors.black87,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              description,
              style: const TextStyle(color: Colors.black54),
            )
          ],
        ),
      ),
    );
  }
}
