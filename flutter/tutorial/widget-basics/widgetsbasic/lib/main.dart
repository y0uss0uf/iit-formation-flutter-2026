import 'package:flutter/material.dart';
import 'package:widgetsbasic/restaurant-charle/pages/splash_page.dart';

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
      home: SplashFoodPage(),
      // routes: {
      //   // '/': (_) => SplashFoodPage(),
      //   // '/login': (_) => LoginPage(),

      //   // '/home': (_)=> HomePage(email: email)
      // },
    );
  }
}
