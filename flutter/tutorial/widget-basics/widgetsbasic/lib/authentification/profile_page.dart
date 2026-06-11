import 'package:flutter/material.dart';
import 'package:widgetsbasic/authentification/login_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key, required this.email});

  final String email;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'je suis connecté',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            Text(email, style: TextStyle(fontSize: 35)),

            TextButton(
              onPressed: () {
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (_) => LoginPage()),
                  (route) => false,
                );
              },
              child: Text('Déconnexion'),
            ),
          ],
        ),
      ),
    );
  }
}
