import 'package:ezcart/routes/routes.dart';
import 'package:ezcart/tabs/Tab0.dart';
import 'package:ezcart/tabs/Tab1.dart';
import 'package:ezcart/utils/next_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';

class Orders extends StatefulWidget {
  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Container(
            width: MediaQuery.of(context).size.width,
            child: Text(
              "MY ORDERS",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(
                  0xFF333333,
                ),
              ),
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
          bottom: TabBar(
            labelStyle: TextStyle(
              //up to your taste
              fontWeight: FontWeight.w400,
            ),
            labelColor: Color(0xFF333333), //Google's sweet blue
            unselectedLabelColor: Color(0xff5f6368), //niceish grey
            isScrollable: false, //up to your taste
            tabs: <Widget>[
              Tab(
                text: "ONGOING",
              ),
              Tab(
                text: "PAST ORDERS",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Container(
              width: 100.0,
              height: 100.0,
              padding: EdgeInsets.all(8.0),
              alignment: Alignment.topRight,
              decoration: BoxDecoration(
                // color: Color(0xffF2F1F3),
                color: Colors.red,
              ),
            ),
            Container(),
          ],
        ),
      ),
    );
  }
}
