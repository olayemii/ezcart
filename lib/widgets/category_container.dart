import 'package:ezcart/widgets/product_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class CategoryContainer extends StatelessWidget {
  final String name;
  CategoryContainer({this.name});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(top: 15.0),
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                name,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: SizedBox(),
              ),
              Row(
                children: <Widget>[
                  Text("ALL"),
                  Icon(
                    FlutterIcons.chevron_right_fea,
                    size: 18.0,
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          GridView(
            shrinkWrap: true,
            physics:
                NeverScrollableScrollPhysics(), // if you want IOS bouncing effect, otherwise remove this line
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 8.0,
              childAspectRatio: 0.6,
            ),
            children: <Widget>[
              ProductCategory(),
              ProductCategory(),
              ProductCategory(),
              ProductCategory(),
              ProductCategory(),
              ProductCategory(),
            ],
          ),
        ],
      ),
    );
  }
}
