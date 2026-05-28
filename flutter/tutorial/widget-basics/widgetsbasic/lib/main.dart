import 'package:flutter/material.dart';
import 'package:widgetsbasic/profile_page.dart';

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
      home: Scaffold(
        body: ProfilePage(),
        
        // appBar: AppBar(
        //   elevation: 0,
        //   title: Text('My First App'),
        //   centerTitle: true,
        //   leading: Icon(Icons.menu),
        //   actions: [
        //     Icon(Icons.notification_add),
        //     Icon(Icons.send),
        //     Icon(Icons.settings),
        //   ],
        // ),
        // backgroundColor: Colors.red,
        // body: Column(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: [
        //     Container(
        //       // padding: EdgeInsets.only(left: 20, top: 20),
        //       margin: EdgeInsets.symmetric(vertical: 20),
        //       alignment: Alignment.center,
        //       decoration: BoxDecoration(
        //         color: Colors.blue,
        //         borderRadius: BorderRadius.circular(20),
        //       ),
        //       height: 100,
        //       width: 200,
        //       // color: Colors.green,
        //       child: Text(
        //         'Bonsoir',
        //         style: TextStyle(color: Colors.white, fontSize: 52),
        //       ),
        //     ),
        //     Container(
        //       padding: EdgeInsets.symmetric(vertical: 20),
        //       child: ElevatedButton(
        //         style: ElevatedButton.styleFrom(),
        //         onPressed: () {},
        //         child: Row(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: [Text('Button')],
        //         ),
        //       ),
        //     ),

        //     Text('data 1', style: TextStyle(color: Colors.white, fontSize: 30)),
        //     Text('data 2', style: TextStyle(color: Colors.white, fontSize: 30)),

        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //       children: [
        //         Text(
        //           'data 3',
        //           style: TextStyle(color: Colors.white, fontSize: 30),
        //         ),
        //         Text(
        //           'data 4',
        //           style: TextStyle(color: Colors.white, fontSize: 30),
        //         ),
        //       ],
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
