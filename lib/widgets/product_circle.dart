import 'package:flutter/material.dart';

class ProductCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 20.0,
      ),
      child: ListTile(
        title: Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Color(0xffDAEAEB),
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            "assets/images/jean.png",
            width: 110.0,
            height: 110.0,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(
          vertical: 5.0,
          horizontal: 0.0,
        ),
        subtitle: Text(
          "Women",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
