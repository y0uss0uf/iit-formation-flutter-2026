import 'package:flutter/material.dart';
import 'package:widgetsbasic/restaurant-charle/data/dummy.dart';
import 'package:widgetsbasic/restaurant-charle/data/extenstion.dart';
import 'package:widgetsbasic/restaurant-charle/data/model.dart';
import 'package:widgetsbasic/restaurant-charle/pages/food_detail_page.dart';
import 'package:widgetsbasic/restaurant-charle/pages/widgets/title_category.dart';

class RestaurantCharleHomePage extends StatefulWidget {
  const RestaurantCharleHomePage({super.key});

  @override
  State<RestaurantCharleHomePage> createState() =>
      _RestaurantCharleHomePageState();
}

class _RestaurantCharleHomePageState extends State<RestaurantCharleHomePage>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: DummyData.menus.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage('images/1.jpg')),
            title: RichText(
              text: TextSpan(
                text: 'Hello, ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: ' Charle',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0XFFae4d4d),
                    ),
                  ),
                ],
              ),
            ),
            // title: Row(
            //   children: [

            //     Text('Hello,', style: TextStyle(fontWeight: FontWeight.w700)),
            //     Text(
            //       ' Charle',
            //       style: TextStyle(
            //         fontWeight: FontWeight.w700,
            //         color: Colors.redAccent,
            //       ),
            //     ),
            //   ],
            // ),
            subtitle: Text('What do you want to eat today!'),
            trailing: Icon(Icons.notifications_none_outlined),
          ),

          SizedBox(height: 15),

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

          TitleCategory(
            title: 'Food Category',
            seeAll: 'See Menu',
            onPressed: () {},
          ),

          TabBar(
            padding: EdgeInsets.zero,
            controller: _tabController,
            isScrollable: false,
            indicatorColor: Colors.transparent,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            dividerColor: Colors.transparent,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            // tabAlignment: TabAlignment.start,
            labelPadding: EdgeInsets.only(right: 10),
            tabs: [
              ...DummyData.menus.map(
                (menu) => Tab(
                  height: 60,
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                    decoration: BoxDecoration(
                      color: Colors.grey.withValues(alpha: .2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(menu.image, height: 24),
                        SizedBox(height: 4),
                        Text(
                          menu.name,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // ...DummyData.menus.map(
              //   (menu) => Tab(
              //     height: 60,
              //     child: Container(
              //       alignment: Alignment.center,
              //       padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
              //       decoration: BoxDecoration(
              //         color: Colors.grey.withValues(alpha: .2),
              //         borderRadius: BorderRadius.circular(10),
              //       ),
              //       child: Column(
              //         mainAxisSize: MainAxisSize.min,
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //         children: [
              //           Image.asset(menu.image, height: 24),
              //           SizedBox(height: 4),
              //           Text(
              //             menu.name,
              //             style: TextStyle(
              //               fontWeight: FontWeight.w600,
              //               fontSize: 13,
              //             ),
              //           ),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
          SizedBox(height: 25),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                ...DummyData.menus.map(
                  (menu) => FoodListView(foods: menu.foods),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FoodListView extends StatelessWidget {
  const FoodListView({required this.foods, super.key});

  final List<Food> foods;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.symmetric(vertical: 20),
      primary: false,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      childAspectRatio: 0.7, // ajuste la valeur
      children: foods
          .map(
            (food) => GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => FoodDetailPage(food: food),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: .1),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Hero(
                      tag: 'tag-${food.title}',
                      child: Container(
                        height: 120,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(food.image),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 7),
                    Spacer(),

                    // Expanded(child: Image.asset(food.image)),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            food.title,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),

                          SizedBox(
                            width: double.infinity,
                            child: Text(
                              food.description,
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Colors.grey,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  ...List.generate(food.rating.toInt(), (
                                    index,
                                  ) {
                                    return Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 12,
                                    );
                                  }),
                                  SizedBox(width: 3),

                                  Text(
                                    food.rating.toString(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12,
                                      color: Colors.grey,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),

                              Text(
                                "${food.price.amount} CFA",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 5),
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 5,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromARGB(255, 203, 53, 53),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'Quick Add',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                                SizedBox(width: 5),
                                Icon(
                                  Icons.shopping_cart_outlined,
                                  color: Colors.white,
                                  size: 16,
                                ),
                              ],
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border,
                            color: Color.fromARGB(255, 203, 53, 53),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
