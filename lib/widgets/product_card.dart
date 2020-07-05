import 'package:ezcart/routes/routes.dart';
import 'package:ezcart/utils/next_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class ProductCard extends StatelessWidget {
  final int id;
  ProductCard({this.id});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 20.0,
      ),
      child: Container(
        height: 300.0,
        child: Column(
          children: <Widget>[
            Expanded(
              child: InkWell(
                onTap: () {
                  nextScreen(context, PRODUCT_DETAIL);
                },
                child: Hero(
                  tag: "product$id",
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    alignment: Alignment.topRight,
                    decoration: BoxDecoration(
                      color: Color(0xffF2F1F3),
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/jean.png",
                        ),
                      ),
                    ),
                    child: Icon(
                      FlutterIcons.heart_fea,
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Text(
                "Original Demin Hoodie Thick Cotton",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Container(
                margin: EdgeInsets.only(
                  top: 5.0,
                ),
                child: Column(
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "₦5,000",
                            style: TextStyle(
                              fontSize: 20.0,
                              // color: Colors.orange,
                              color: Color(0xFF333333),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
