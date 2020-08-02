import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReferFriends extends StatelessWidget {
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
          "Refer Friends",
          style: GoogleFonts.openSans(
            color: Color(0xFF333333),
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(12.0),
          child: Column(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                child: Center(
                  child: SizedBox(
                    height: 400.0,
                  ),
                ),
              ),
              Text(
                "Invite your friends and get \n buzz points",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline4.merge(
                      TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26.0,
                        color: Color(0xFF333333),
                      ),
                    ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Invite friends and get bonus points once they register and make their first purchase.",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.subtitle1.merge(
                      TextStyle(
                        height: 1.7,
                      ),
                    ),
              ),
              SizedBox(
                height: 80.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
