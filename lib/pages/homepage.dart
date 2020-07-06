import 'package:ezcart/routes/routes.dart';
import 'package:ezcart/tabs/Tab0.dart';
import 'package:ezcart/tabs/Tab1.dart';
import 'package:ezcart/utils/next_screen.dart';
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
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          onTap: (int index) {
            switch (index) {
              case 2:
                nextScreen(context, CART);
            }
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                FlutterIcons.home_ant,
              ),
              title: Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FlutterIcons.skin_ant,
              ),
              title: Text("Categories"),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FlutterIcons.shopping_bag_fea,
              ),
              title: Text("Cart"),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FlutterIcons.message1_ant,
              ),
              title: Text("Help"),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FlutterIcons.user_ant,
              ),
              title: Text("Account"),
            ),
          ],
        ),
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
        body: TabBarView(
          children: <Widget>[
            Tab0(),
            Tab1(),
            Tab0(),
            Tab0(),
            Tab0(),
            Tab0(),
            Tab0(),
          ],
        ),
      ),
    );
  }
}
