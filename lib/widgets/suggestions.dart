import 'package:ezcart/widgets/product_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Suggestions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
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
    );
  }
}
