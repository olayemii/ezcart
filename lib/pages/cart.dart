import 'package:ezcart/widgets/suggestions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        iconTheme: IconThemeData(
          color: Color(0xFF333333),
        ),
        title: Text(
          "Shopping Cart",
          style: GoogleFonts.openSans(
            color: Color(0xFF333333),
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 400.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Your shopping cart is empty",
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    width: 200.0,
                    height: 45.0,
                    child: FlatButton(
                      color: Colors.red,
                      child: Text(
                        "Start Shopping",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
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
