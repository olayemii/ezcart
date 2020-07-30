import 'package:ezcart/providers/BottomViewProvider.dart';
import 'package:ezcart/routes/routes.dart';
import 'package:ezcart/utils/next_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:provider/provider.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: Provider.of<BottomViewProvider>(context).currentPage,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        Provider.of<BottomViewProvider>(context, listen: false).currentPage =
            index;
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
    );
  }
}
