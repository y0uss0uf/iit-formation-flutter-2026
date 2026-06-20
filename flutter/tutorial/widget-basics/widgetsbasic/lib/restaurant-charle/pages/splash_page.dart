import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:widgetsbasic/restaurant-charle/pages/login_page.dart';

class SplashFoodPage extends StatefulWidget {
  const SplashFoodPage({super.key});

  @override
  State<SplashFoodPage> createState() => _SplashFoodPageState();
}

class _SplashFoodPageState extends State<SplashFoodPage> {
  @override
  void initState() {
    print('Ouverture avant creation de la page');

    Future.delayed(Duration.zero, () async {
      print('Passer la ala page de login');

      await Future.delayed(Duration(seconds: 3));
      Navigator.of(
        context,
      ).pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));

      // Navigator.pushReplacementNamed(context, '/login');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('Creation de la page');
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.orangeAccent.shade100,
      body: Center(
        child: Lottie.asset(
          'images/splash_food.json',
          fit: BoxFit.cover,
          height: size.height * .2,
          width: size.height * .2,
        ),
      ),
    );
  }
}
