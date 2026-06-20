import 'package:flutter/material.dart';
import 'package:widgetsbasic/authentification/login_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
    required this.email,
    required this.nom,
    required this.prenom,
  });

  final String nom;
  final String prenom;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                CircleAvatar(radius: 50),
                SizedBox(height: 20),
                Text('$nom $prenom', style: TextStyle(fontSize: 21)),
                Text(email, style: TextStyle(fontSize: 18)),
              ],
            ),

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
