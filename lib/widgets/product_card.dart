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
                "Original Demin Hoodie Thick Cotton".toUpperCase(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "USD19.20",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color(0xFF9A0000),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Text(
                            "USD19.20",
                            style: TextStyle(
                              fontSize: 18.0,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 50.0,
                      child: FlatButton(
                        child: Text(
                          "ADD TO BAG",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {},
                        color: Colors.black,
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
