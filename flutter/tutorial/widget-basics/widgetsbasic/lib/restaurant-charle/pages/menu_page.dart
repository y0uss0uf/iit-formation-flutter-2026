import 'package:flutter/material.dart';
import 'package:widgetsbasic/restaurant-charle/data/dummy.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Menu',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
              ),
              Stack(
                children: [
                  Icon(Icons.notifications_none_outlined, size: 29),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text('+99', style: TextStyle(fontSize: 10)),
                    ),
                  ),
                ],
              ),
            ],
          ),

          SizedBox(height: 20),
          RichText(
            text: TextSpan(
              text: 'Choose your Food, ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                fontSize: 21,
                letterSpacing: .4,
              ),
              children: [
                TextSpan(
                  text: ' Today',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0XFFae4d4d),
                    fontSize: 21,
                    letterSpacing: .4,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              hintText: 'Search for your favourite food',
              prefixIcon: Icon(Icons.search),
              suffixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.menu_sharp),
              ),
              fillColor: Color(0XFFF1F1F1),
              filled: true,
              hintStyle: TextStyle(fontSize: 12),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.withValues(alpha: .5),
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                  color: Colors.grey.withValues(alpha: .5),
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                  color: Colors.grey.withValues(alpha: .5),
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                  color: Colors.grey.withValues(alpha: .5),
                ),
              ),
            ),
          ),
          SizedBox(height: 25),

          Text(
            'Food Category',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
          ),
          Expanded(
            child: Container(
              child: ListView.builder(
                itemCount: DummyData.menus.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.deepOrange[100 * (index + 1)],
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(DummyData.menus[index].image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_outlined, size: 30),
                    subtitle: Text(
                      '${DummyData.menus[index].foods.length} Items',
                    ),
                    title: Text(
                      DummyData.menus[index].name,
                      style: TextStyle(fontSize: 27),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
