import 'package:ezcart/pages/account.dart';
import 'package:ezcart/pages/cart.dart';
import 'package:ezcart/pages/categories.dart';
import 'package:ezcart/pages/homepage.dart';
import 'package:ezcart/pages/orders.dart';
import 'package:ezcart/pages/product_detail.dart';
import 'package:ezcart/pages/refer_friends.dart';
import 'package:ezcart/pages/walkthrough.dart';
import 'package:ezcart/routes/routes.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case INDEX:
      return MaterialPageRoute(builder: (BuildContext context) => Homepage());
    case PRODUCT_DETAIL:
      return MaterialPageRoute(
          builder: (BuildContext context) => ProductDetail());
    case ACCOUNT:
      return MaterialPageRoute(builder: (BuildContext context) => Account());
    case WALKTHROUGH:
      return MaterialPageRoute(
          builder: (BuildContext context) => Walkthrough());
    case ORDERS:
      return MaterialPageRoute(builder: (BuildContext context) => Orders());
    case CART:
      return MaterialPageRoute(builder: (BuildContext context) => Cart());
    case CATEGORY:
      return MaterialPageRoute(builder: (BuildContext context) => Categories());
    case REFER_FRIENDS:
      return MaterialPageRoute(
          builder: (BuildContext context) => ReferFriends());
    default:
      return MaterialPageRoute(
          builder: (BuildContext context) => ProductDetail());
  }
}
