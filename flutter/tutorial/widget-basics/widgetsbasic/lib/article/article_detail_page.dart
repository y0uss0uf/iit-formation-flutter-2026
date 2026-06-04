import 'package:flutter/material.dart';
import 'package:widgetsbasic/article/article_model.dart';

class ArticleDetail extends StatelessWidget {
  const ArticleDetail(this.article, {super.key});
  final ArticleModel article;

  IconData _getIcon(int index) {
    if (index == 0) {
      return Icons.favorite;
    } else if (index == 1) {
      return Icons.app_registration_rounded;
    } else if (index == 2) {
      return Icons.sms;
    } else {
      return Icons.share;
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      //appBar: AppBar(title: Text(article.title)),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Stack(
              children: [
                Container(
                  height: 300,
                  width: size.width * 1,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(article.urlToImage),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: const EdgeInsets.all(12.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: IconButton(
                        icon: Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  ),
                ),

                Positioned(
                  bottom: 0,
                  left: 0,
                  // alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                          ),
                          onPressed: () {},
                          child: Text(
                            'Skin Care',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),

                        Text(
                          article.description,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(4, (index) {
                final stats = [
                  article.nb_like,
                  article.nb_article_register,
                  article.nb_comment,
                  article.nb_share,
                ];

                return Container(
                  margin: const EdgeInsets.only(right: 5),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),

                  decoration: BoxDecoration(
                    color: Color(0XFFF1F1F1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      Icon(_getIcon(index), color: Colors.grey, size: 14),
                      SizedBox(width: 5),
                      Text(
                        '${stats[index]}',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ],
          ),

          SizedBox(height: 20),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              article.content,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
