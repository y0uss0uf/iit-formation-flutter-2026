import 'package:flutter/material.dart';

class Profil2Page extends StatelessWidget {
  const Profil2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 50),
            Center(
              child: CircleAvatar(
                backgroundColor: Colors.red,
                radius: 60,
                backgroundImage: AssetImage('images/1.jpg'),
              ),
            ),

            SizedBox(height: 20),

            Text(
              'Yao Christ',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            Text(
              'yao.christ@.gmail.com',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),

            SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif venant remplacer le faux-texte dès qu'il est prêt ou que la mise en page est achevée.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14),
              ),
            ),

            SizedBox(height: 30),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.phone_android_outlined, color: Colors.white),
                    SizedBox(width: 10),
                    Text(
                      'Me contacter',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
