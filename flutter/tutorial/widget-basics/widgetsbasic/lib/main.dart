import 'package:flutter/material.dart';
import 'package:widgetsbasic/authentification/home_page.dart';
import 'package:widgetsbasic/authentification/login_page.dart';
import 'package:widgetsbasic/authentification/splash_page.dart';

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
      // home: SplashPage(),
      routes: {
        '/': (_) => SplashPage(),
        '/login': (_) => LoginPage(),

        // '/home': (_)=> HomePage(email: email)
      },
    );
  }
}
