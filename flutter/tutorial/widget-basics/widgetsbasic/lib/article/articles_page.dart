import 'package:flutter/material.dart';
import 'package:widgetsbasic/article/article_model.dart';

class ArticlesPage extends StatelessWidget {
  const ArticlesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Articles',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Hottest News',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),

              ///
              ///
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                height: 300,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: DummyData.listArticles.length, //6
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    print(
                      '========================== $index --- tableau  ${DummyData.listArticles[index].urlToImage}',
                    );

                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      width: size.width * .85,
                      child: Stack(
                        children: [
                          Container(
                            // height: 300,
                            // width: size.width * .8,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  // 'images/articles/article_1.jpeg',
                                  DummyData.listArticles[index].urlToImage,
                                ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),

                          Align(
                            alignment: Alignment.topRight,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                ),
                                onPressed: () {},
                                child: Text(
                                  'Skin Care',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
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
                                  Text(
                                    DummyData.listArticles[index].title,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  SizedBox(
                                    width: size.width * .7,
                                    child: Text(
                                      DummyData.listArticles[index].description,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 19,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),

              ///
              ///
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),

                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recommended for you',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 21,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'see all',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),

                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      height: size.height * .4,
                      width: double.infinity,
                      child: ListView.builder(
                        itemCount: DummyData.listArticles.length, //3
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: Image.asset(
                              DummyData.listArticles[index].urlToImage,
                            ),
                            title: Text(
                              DummyData.listArticles[index].title,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            subtitle: Text(
                              DummyData.listArticles[index].description,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
