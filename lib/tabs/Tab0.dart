import 'package:ezcart/widgets/mini_product_cart.dart';
import 'package:ezcart/widgets/photo_slider.dart';
import 'package:ezcart/widgets/product_card.dart';
import 'package:ezcart/widgets/product_circle.dart';
import 'package:ezcart/widgets/suggestions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tab0 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 270.0,
              child: PhotoSlider(
                images: [
                  "assets/images/ezcart.jpg",
                  "assets/images/ezcart1.jpg",
                  "assets/images/ezcart2.jpg",
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
            Suggestions(),
          ],
        ),
      ),
    );
  }
}
