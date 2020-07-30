import 'package:ezcart/pages/account.dart';
import 'package:ezcart/pages/cart.dart';
import 'package:ezcart/pages/categories.dart';
import 'package:ezcart/providers/BottomViewProvider.dart';
import 'package:ezcart/routes/routes.dart';
import 'package:ezcart/tabs/Tab0.dart';
import 'package:ezcart/tabs/Tab1.dart';
import 'package:ezcart/utils/next_screen.dart';
import 'package:ezcart/widgets/bottom_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';
import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    Widget getDisplayScreen() {
      switch (Provider.of<BottomViewProvider>(context).currentPage) {
        case 0:
          return TabBarView(
            children: <Widget>[
              Tab0(),
              Tab1(),
              Tab0(),
              Tab0(),
              Tab0(),
              Tab0(),
              Tab0(),
            ],
          );
        case 1:
          return Categories();
        case 2:
          return Cart();
        case 3:
          return Container();
        case 4:
          return Account();
        default:
          return Container();
      }
    }

    return DefaultTabController(
      length: 7,
      child: Scaffold(
        bottomNavigationBar: BottomNavigation(),
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
        body: getDisplayScreen(),
      ),
    );
  }
}
