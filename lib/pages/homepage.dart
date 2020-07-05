import 'package:ezcart/widgets/mini_product_cart.dart';
import 'package:ezcart/widgets/photo_slider.dart';
import 'package:ezcart/widgets/product_card.dart';
import 'package:ezcart/widgets/product_circle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
        appBar: AppBar(
          title: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Ez",
                  style: TextStyle(
                    color: Color(0xFF333333),
                    fontSize: 28.0,
                  ),
                ),
                TextSpan(
                  text: "Cart",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 28.0,
                  ),
                )
              ],
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
          bottom: TabBar(
            labelStyle: TextStyle(
              //up to your taste
              fontWeight: FontWeight.w400,
            ),
            indicatorSize: TabBarIndicatorSize.label, //makes it better
            labelColor: Color(0xFF333333), //Google's sweet blue
            unselectedLabelColor: Color(0xff5f6368), //niceish grey
            isScrollable: true, //up to your taste
            indicator: MD2Indicator(
                //it begins here
                indicatorHeight: 3,
                indicatorColor: Color(0xFF333333),
                indicatorSize:
                    MD2IndicatorSize.full //3 different modes tiny-normal-full
                ),
            tabs: <Widget>[
              Tab(
                text: "Sale",
              ),
              Tab(
                text: "Men",
              ),
              Tab(
                text: "Women",
              ),
              Tab(
                text: "Kids & Moms",
              ),
              Tab(
                text: "Trending",
              ),
              Tab(
                text: "Trending",
              ),
              Tab(
                text: "Trending",
              )
            ],
          ),
          actions: <Widget>[
            Container(
              height: 30.0,
              width: 250.0,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(16.0),
              ),
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 10.0,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 15.0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    FlutterIcons.search_fea,
                    color: Colors.grey[500],
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    "Search products",
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontSize: 14.0,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 270.0,
                  child: PhotoSlider(
                    images: [
                      "assets/images/banner.jpg",
                      "assets/images/banner2.jpg",
                      "assets/images/banner3.jpg",
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 15.0,
                  ),
                  child: GridView(
                    shrinkWrap: true,
                    physics:
                        NeverScrollableScrollPhysics(), // if you want IOS bouncing effect, otherwise remove this line
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                    ),
                    children: <Widget>[
                      ProductCircle(),
                      ProductCircle(),
                      ProductCircle(),
                      ProductCircle(),
                      ProductCircle(),
                      ProductCircle(),
                      ProductCircle(),
                      ProductCircle(),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,
                    top: 30.0,
                    bottom: 15.0,
                  ),
                  child: Text(
                    "Flash Deals",
                    style: Theme.of(context).textTheme.subtitle2.merge(
                          TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                  ),
                ),
                Container(
                  height: 150.0,
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      MiniProductCart(),
                      MiniProductCart(),
                      MiniProductCart(),
                      MiniProductCart(),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  margin: EdgeInsets.symmetric(
                    vertical: 30.0,
                  ),
                  child: GridView(
                    shrinkWrap: true,
                    physics:
                        NeverScrollableScrollPhysics(), // if you want IOS bouncing effect, otherwise remove this line
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.5,
                      mainAxisSpacing: 8.0,
                      crossAxisSpacing: 16.0,
                    ),
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/banner2.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "New Arrivals",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/banner2.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "New Arrivals",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/banner2.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "New Arrivals",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/banner2.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "New Arrivals",
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 150.0,
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      MiniProductCart(),
                      MiniProductCart(),
                      MiniProductCart(),
                      MiniProductCart(),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,
                    top: 30.0,
                    bottom: 15.0,
                  ),
                  child: Text(
                    "You Might Also Like",
                    style: Theme.of(context).textTheme.subtitle2.merge(
                          TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: GridView.count(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    childAspectRatio: 0.5,
                    padding: const EdgeInsets.all(4.0),
                    mainAxisSpacing: 8.0,
                    crossAxisSpacing: 16.0,
                    children: List.generate(20, (index) {
                      return ProductCard(id: index);
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
