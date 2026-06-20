import 'package:flutter/material.dart';
import 'package:widgetsbasic/restaurant-charle/data/extenstion.dart';
import 'package:widgetsbasic/restaurant-charle/data/model.dart';

class FoodDetailPage extends StatelessWidget {
  const FoodDetailPage({super.key, required this.food});

  final Food food;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(
            tag: 'tag-${food.title}',
            child: SizedBox(
              height: size.height * .5,
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      image: DecorationImage(
                        image: AssetImage(food.image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).pop(),
                      child: Container(
                        margin: EdgeInsets.all(20),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withValues(alpha: .3),
                        ),
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      margin: EdgeInsets.all(20),

                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withValues(alpha: .3),
                      ),
                      child: Icon(Icons.favorite, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),

          Container(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  food.title,
                  style: TextStyle(fontSize: 27, fontWeight: FontWeight.w800),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ...List.generate(food.rating.toInt(), (index) {
                          return Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 24,
                          );
                        }),
                        SizedBox(width: 3),

                        Text(
                          food.rating.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Colors.grey,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),

                        Text(
                          '(${food.reviewCount}) reviews',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Colors.grey,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(width: 10),

                        Row(
                          children: [
                            Icon(Icons.av_timer_rounded, color: Colors.green),

                            Text('${food.preparationTime} min'),
                          ],
                        ),
                      ],
                    ),

                    Text(
                      "${food.price.amount} CFA",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 21,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  'Nutrution Facts',
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w800),
                ),
                SizedBox(height: 10),

                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),

                SizedBox(height: 10),
                Text(
                  'Description',
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w800),
                ),
                SizedBox(height: 10),

                Container(
                  padding: EdgeInsets.only(left: 15),
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(width: 5, color: Colors.red),
                    ),
                  ),
                  child: Text(food.description),
                ),

                SizedBox(height: 10),
                Text(
                  'Side Options',
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w800),
                ),
                SizedBox(height: 10),

                SizedBox(
                  height: 80,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: food.sideOption.length,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 100,
                        margin: EdgeInsets.only(left: 7),
                        decoration: BoxDecoration(
                          color: Colors.grey.withValues(alpha: .5),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('images/burgers/1.png', height: 40),
                            SizedBox(height: 7),
                            Text(
                              food.sideOption[index].name,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 7),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
