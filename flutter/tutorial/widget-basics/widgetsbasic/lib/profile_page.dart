import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0XFF4839dc),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 40),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          child: IconButton(
                            color: Colors.black,
                            onPressed: () {},
                            icon: Icon(Icons.arrow_back_ios_new),
                          ),
                        ),

                        Icon(Icons.settings, color: Colors.white),
                      ],
                    ),
                  ),

                  CircleAvatar(
                    backgroundImage: AssetImage('images/1.jpg'),
                    radius: 40,
                  ),

                  SizedBox(height: 20),

                  Text(
                    'Jhon Doe',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'jhon.doe@gmail.com',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  // Container(
                  //   width: 80,
                  //   height: 80,
                  //   decoration: BoxDecoration(
                  //     color: Colors.white,
                  //     // shape: BoxShape.circle,
                  //     borderRadius: BorderRadius.circular(999),
                  //     image: DecorationImage(
                  //       image: AssetImage('images/1.jpg'),
                  //       fit: BoxFit.cover,
                  //     ),
                  //   ),
                  // ),
                  // Image.asset('images/1.jpg', width: 80, height: 80),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey.withValues(alpha: .3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'content'.toUpperCase(),
                          style: TextStyle(color: Colors.black, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey.withValues(alpha: .3),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.yellow),
                                SizedBox(width: 10),
                                Text(
                                  'Md salim, Bangladesh',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 15),

                            Text(
                              'Subscribe to unlock the rest of your weeks and\nreach your full',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Subscribe'.toUpperCase()),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('Restore'.toUpperCase()),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey.withValues(alpha: .3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.dashboard),
                          title: Text('My Shoes'),
                          trailing: Icon(Icons.arrow_forward_ios, size: 14),
                        ),

                        Divider(),
                        ListTile(
                          leading: Icon(Icons.dashboard),
                          title: Text('My Shoes'),
                          trailing: Icon(Icons.arrow_forward_ios, size: 14),
                        ),
                        Divider(),
                        ListTile(
                          leading: Icon(Icons.dashboard),
                          title: Text('My Shoes'),
                          trailing: Icon(Icons.arrow_forward_ios, size: 14),
                        ),
                        Divider(),
                        ListTile(
                          leading: Icon(Icons.dashboard),
                          title: Text('My Shoes'),
                          trailing: Icon(Icons.arrow_forward_ios, size: 14),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
