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
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
                expandedHeight: 350.0,
                backgroundColor: Colors.grey[100],
                floating: false,
                flexibleSpace: FlexibleSpaceBar(
                  background: Hero(
                    tag: "product",
                    child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(16.0),
                      child: Image.asset(
                        "assets/images/jean.png",
                      ),
                    ),
                  ),
                )),
            SliverToBoxAdapter(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(
                            "USD18.99",
                            style: GoogleFonts.openSans(
                              fontSize: 23.0,
                              color: Color(0xFFFF9D0C),
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
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                FlutterIcons.star_fou,
                                size: 18.0,
                                color: Color(0xFFFF9D0C),
                              ),
                              Icon(
                                FlutterIcons.star_fou,
                                size: 18.0,
                                color: Color(0xFFFF9D0C),
                              ),
                              Icon(
                                FlutterIcons.star_fou,
                                size: 18.0,
                                color: Color(0xFFFF9D0C),
                              ),
                              Icon(
                                FlutterIcons.star_fou,
                                size: 18.0,
                                color: Color(0xFFFF9D0C),
                              ),
                              Icon(
                                FlutterIcons.star_fou,
                                size: 18.0,
                                color: Color(0xFFFF9D0C),
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
                          fontWeight: FontWeight.w500,
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
                                color: Colors.grey[200],
                                child: Icon(
                                  FlutterIcons.more_horizontal_fea,
                                  color: Color(0xFF333333),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15.0),
                      Divider(),
                      SizedBox(height: 15.0),
                      Text(
                        "Delivery & Returns Policy",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                        height: 130.0,
                        child: ListView(
                          physics: NeverScrollableScrollPhysics(),
                          children: <Widget>[
                            ListTile(
                              contentPadding: EdgeInsets.all(0.0),
                              leading: Icon(
                                FlutterIcons.truck_faw5s,
                                color: Color(0xFF333333),
                              ),
                              title: Text("Delivery Information"),
                              subtitle: Text(
                                "Delivered between Tuesday 7 Jul and Friday 10 Jul",
                              ),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.all(0.0),
                              leading: Icon(
                                FlutterIcons.credit_card_refund_outline_mco,
                                color: Color(0xFF333333),
                              ),
                              title: Text("Return Policy"),
                              subtitle: Text(
                                "Free returns within 15 days of purchase",
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15.0),
                      Divider(),
                      SizedBox(height: 15.0),
                      Text(
                        "Product Details",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 18.0,
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "Description",
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          Expanded(
                            child: SizedBox(),
                          ),
                          Text(
                            "Cotton",
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          Icon(
                            FlutterIcons.chevron_right_fea,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "Reviews (20)",
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10.0),
                        child: Row(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 25.0,
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "+2347033195813",
                                    style:
                                        Theme.of(context).textTheme.subtitle1,
                                  ),
                                  TextSpan(
                                    text: "\n3 months ago",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: SizedBox(),
                            ),
                            Icon(
                              FlutterIcons.star_fou,
                              size: 18.0,
                              color: Color(0xFFFF9D0C),
                            ),
                            Icon(
                              FlutterIcons.star_fou,
                              size: 18.0,
                              color: Color(0xFFFF9D0C),
                            ),
                            Icon(
                              FlutterIcons.star_fou,
                              size: 18.0,
                              color: Color(0xFFFF9D0C),
                            ),
                            Icon(
                              FlutterIcons.star_fou,
                              size: 18.0,
                              color: Color(0xFFFF9D0C),
                            ),
                            Icon(
                              FlutterIcons.star_fou,
                              size: 18.0,
                              color: Color(0xFFFF9D0C),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "The fabric is thinner than i expected, and the color less vibrant than the picture. But it is fit me perfectly so, it is okay",
                          style: TextStyle(
                            fontSize: 16.0,
                            height: 1.8,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
