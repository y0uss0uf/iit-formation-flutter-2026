import 'package:flutter/material.dart';
import 'package:widgetsbasic/article/articles_page.dart';
import 'package:widgetsbasic/profil_2_page.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My First App',
      home: ArticlesPage(),
    );
  }
}
