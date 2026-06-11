import 'package:flutter/material.dart';

class PageB extends StatelessWidget {
  const PageB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page B')),
      body: Center(
        child: Text(
          'Detail Page B',
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
