import 'package:flutter/material.dart';
import 'package:widgetsbasic/authentification/profile_page.dart';
import 'package:widgetsbasic/navigation/page_a.dart';
import 'package:widgetsbasic/navigation/page_c.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    required this.email,
    super.key,
    required this.nom,
    required this.prenom,
  });

  final String nom;
  final String prenom;
  final String email;

  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> _pages = <Widget>[];

  @override
  void initState() {
    _pages = <Widget>[
      PageA(), // INDEX 0
      PageC(), // INDEX 1
      ProfilePage(
        email: widget.email,
        nom: widget.nom,
        prenom: widget.prenom,
      ), // INDEX 2
    ];

    super.initState();
  }

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    _selectedIndex = index;
    setState(() {});

    // setState(() {
    //   _selectedIndex = index;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(title: const Text('Page Accueil')),
      // body: Center(child: _pages[_selectedIndex]),
      body: Center(child: _pages.elementAt(_selectedIndex)),

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Page A'),

          BottomNavigationBarItem(icon: Icon(Icons.business), label: 'Page C'),

          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
