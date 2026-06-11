import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:widgetsbasic/authentification/login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    print('Ouverture avant creation de la page');

    Future.delayed(Duration.zero, () async {
      print('Passer la ala page de login');

      await Future.delayed(Duration(seconds: 3));
      // Navigator.of(
      //   context,
      // ).pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));

      Navigator.pushReplacementNamed(context, '/login');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('Creation de la page');
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Lottie.asset(
        'images/auth/splash.json',
        fit: BoxFit.cover,
        height: size.height,
        width: size.width,
      ),
    );
  }
}
