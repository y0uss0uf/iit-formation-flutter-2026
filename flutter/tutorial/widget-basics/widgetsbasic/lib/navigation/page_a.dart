import 'package:flutter/material.dart';
import 'package:widgetsbasic/navigation/page_b.dart';

class PageA extends StatelessWidget {
  const PageA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Page A')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // passer a la page B
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => PageB()));
          },
          child: Text('Detail Page B'),
        ),
      ),
    );
  }
}
