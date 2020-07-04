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
          decoration: BoxDecoration(
            color: Color(0xffDAEAEB),
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage("assets/images/jean.png"),
              fit: BoxFit.contain,
            ),
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
