import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetail extends StatefulWidget {
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    void _modalBottomSheetMenu() {
      showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
            height: 350.0,
            color: Colors.transparent, //could change this to Color(0xFF737373),
            //so you don't have to change MaterialApp canvasColor
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(
                    10.0,
                  ),
                  topRight: const Radius.circular(
                    10.0,
                  ),
                ),
              ),
              child: Center(
                child: Text("This is a modal sheet"),
              ),
            ),
          );
        },
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Hero(
          tag: "product",
          child: CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 350.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFD0CEC8),
                      ),
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            "assets/images/jean.png",
                            width: 250.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            "NGN5,000",
                            style: GoogleFonts.openSans(
                              fontSize: 23.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            "NGN5,000",
                            style: GoogleFonts.openSans(
                              fontSize: 16.0,
                              color: Colors.grey[500],
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          Expanded(
                            child: SizedBox(),
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                FlutterIcons.star_fou,
                                size: 18.0,
                              ),
                              Icon(
                                FlutterIcons.star_fou,
                                size: 18.0,
                              ),
                              Icon(
                                FlutterIcons.star_fou,
                                size: 18.0,
                              ),
                              Icon(
                                FlutterIcons.star_fou,
                                size: 18.0,
                              ),
                              Icon(
                                FlutterIcons.star_fou,
                                size: 18.0,
                              ),
                              SizedBox(width: 5.0),
                              Text(
                                "(19)",
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Icon(
                                FlutterIcons.chevron_right_fea,
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Winter Cotton Jacket for Girls Clothes Parka Hooded Russian Winter Coat 2019.",
                        style: TextStyle(
                          fontSize: 18.0,
                          height: 1.5,
                        ),
                      ),
                      SizedBox(height: 15.0),
                      Divider(),
                      SizedBox(height: 15.0),
                      Text(
                        "Select Color & Size",
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 80.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                color: Color(0xffDAEAEB),
                                image: DecorationImage(
                                  image: AssetImage("assets/images/jean.png"),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              height: 80.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                color: Color(0xffDAEAEB),
                                image: DecorationImage(
                                  image: AssetImage("assets/images/jean.png"),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Container(
                              height: 80.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                color: Color(0xffDAEAEB),
                                image: DecorationImage(
                                  image: AssetImage("assets/images/jean.png"),
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            GestureDetector(
                              onTap: () {
                                _modalBottomSheetMenu();
                              },
                              child: Container(
                                height: 80.0,
                                width: 60.0,
                                color: Color(0xFFD0CEC8),
                                child: Icon(
                                  FlutterIcons.more_horizontal_fea,
                                  color: Color(0xFF333333),
                                ),
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
      ),
    );
  }
}
