import 'package:flutter/material.dart';

class ProductCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/jean.png",
                  ),
                ),
              ),
            ),
          ),
          Text(
            "Vintage",
            style: TextStyle(fontSize: 16.0),
          )
        ],
      ),
    );
  }
}
