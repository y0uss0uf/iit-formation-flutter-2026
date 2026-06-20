import 'package:flutter/material.dart';
import 'package:widgetsbasic/authentification/profile_page.dart';
import 'package:widgetsbasic/navigation/page_c.dart';
import 'package:widgetsbasic/restaurant-charle/pages/home_page.dart';
import 'package:widgetsbasic/restaurant-charle/pages/menu_page.dart';

class OverviewPage extends StatefulWidget {
  const OverviewPage({
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
  State<OverviewPage> createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
  List<Widget> _pages = <Widget>[];

  @override
  void initState() {
    _pages = <Widget>[
      RestaurantCharleHomePage(), // INDEX 0
      MenuPage(), // INDEX 1
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
      backgroundColor: Color(0XFFF1F1F1),
      // appBar: AppBar(title: const Text('Page Accueil')),
      // body: Center(child: _pages[_selectedIndex]),
      body: SafeArea(child: Center(child: _pages.elementAt(_selectedIndex))),

      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),

          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),

          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'My Cart',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
