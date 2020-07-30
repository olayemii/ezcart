import 'dart:math';

import 'package:ezcart/widgets/bottom_navigation.dart';
import 'package:ezcart/widgets/suggestions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Color(0xFFFF9D0C),
            elevation: 0.0,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(),
            ),
            pinned: true,
            floating: true,
            automaticallyImplyLeading: false,
          ),
          SliverToBoxAdapter(
            child: Container(
              width: double.infinity,
              color: Colors.grey[100],
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(12.0),
                        height: 345.0,
                        child: MediaQuery.removePadding(
                          removeTop: true,
                          context: context,
                          child: ListView(
                            physics: NeverScrollableScrollPhysics(),
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
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.all(12.0),
                        height: 220.0,
                        child: MediaQuery.removePadding(
                          context: context,
                          removeTop: true,
                          child: ListView(
                            physics: NeverScrollableScrollPhysics(),
                            children: <Widget>[
                              ListTile(
                                contentPadding: EdgeInsets.all(0.0),
                                leading: Icon(
                                  FlutterIcons.map_pin_fea,
                                  color: Color(0xFF333333),
                                ),
                                title: Align(
                                  child: Text(
                                    "Address Book",
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
                                  FlutterIcons.help_circle_fea,
                                  color: Color(0xFF333333),
                                ),
                                title: Align(
                                  child: Text(
                                    "Help Center",
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
                                  FlutterIcons.users_fea,
                                  color: Color(0xFF333333),
                                ),
                                title: Align(
                                  child: Text(
                                    "Invite Friend",
                                  ),
                                  alignment: Alignment(-1.1, 0),
                                ),
                                trailing: Icon(
                                  FlutterIcons.chevron_right_fea,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        color: Colors.white,
                        child: Suggestions(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
