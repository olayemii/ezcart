import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: false,
        bottom: PreferredSize(
          preferredSize: Size(
            double.infinity,
            70.0,
          ),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.grey[100],
        height: double.infinity,
        padding: EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(12.0),
              height: 345.0,
              child: ListView(
                children: <Widget>[
                  ListTile(
                    contentPadding: EdgeInsets.all(0.0),
                    leading: Icon(
                      FlutterIcons.box_fea,
                      color: Color(0xFF333333),
                    ),
                    title: Align(
                      child: Text(
                        "Orders",
                      ),
                      alignment: Alignment(-1.1, 0),
                    ),
                    trailing: Icon(
                      FlutterIcons.chevron_right_fea,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.all(0.0),
                    leading: Icon(
                      FlutterIcons.edit_fea,
                      color: Color(0xFF333333),
                    ),
                    title: Align(
                      child: Text(
                        "Pending Reviews",
                      ),
                      alignment: Alignment(-1.1, 0),
                    ),
                    trailing: Icon(
                      FlutterIcons.chevron_right_fea,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.all(0.0),
                    leading: Icon(
                      FlutterIcons.heart_fea,
                      color: Color(0xFF333333),
                    ),
                    title: Align(
                      child: Text(
                        "Saved Items",
                      ),
                      alignment: Alignment(-1.1, 0),
                    ),
                    trailing: Icon(
                      FlutterIcons.chevron_right_fea,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.all(0.0),
                    leading: Icon(
                      FlutterIcons.annotate_fou,
                      color: Color(0xFF333333),
                    ),
                    title: Align(
                      child: Text(
                        "Recently Viewed",
                      ),
                      alignment: Alignment(-1.1, 0),
                    ),
                    trailing: Icon(
                      FlutterIcons.chevron_right_fea,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.all(0.0),
                    leading: Icon(
                      FlutterIcons.search_fea,
                      color: Color(0xFF333333),
                    ),
                    title: Align(
                      child: Text(
                        "Recently Searched",
                      ),
                      alignment: Alignment(-1.1, 0),
                    ),
                    trailing: Icon(
                      FlutterIcons.chevron_right_fea,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
