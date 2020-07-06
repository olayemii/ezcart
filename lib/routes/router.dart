import 'package:ezcart/pages/account.dart';
import 'package:ezcart/pages/cart.dart';
import 'package:ezcart/pages/homepage.dart';
import 'package:ezcart/pages/product_detail.dart';
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
    case CART:
      return MaterialPageRoute(builder: (BuildContext context) => Cart());
    default:
      return MaterialPageRoute(
          builder: (BuildContext context) => ProductDetail());
  }
}
