import 'package:flutter/material.dart';

class MiniProductCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            width: 150.0,
            child: Image.asset("assets/images/jean.png"),
          ),
        ),
        Text(
          "US\$17.90",
          style: TextStyle(
            fontSize: 16.0,
          ),
        )
      ],
    );
  }
}
