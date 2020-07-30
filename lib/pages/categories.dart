import 'package:ezcart/widgets/bottom_navigation.dart';
import 'package:ezcart/widgets/category_container.dart';
import 'package:ezcart/widgets/mini_product_cart.dart';
import 'package:ezcart/widgets/product_category.dart';
import 'package:ezcart/widgets/product_circle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.grey[100],
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height:
                    MediaQuery.of(context).size.height - kToolbarHeight - 2.0,
                width: 125.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: ListView(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        border: Border(
                          left: BorderSide(
                            width: 5.0,
                          ),
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: ListTile(
                        title: Text("Women"),
                      ),
                    ),
                    Divider(height: 0.0),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: ListTile(
                        title: Text("Men"),
                      ),
                    ),
                    Divider(height: 0.0),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: ListTile(
                        title: Text("Kids"),
                      ),
                    ),
                    Divider(height: 0.0),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: ListTile(
                        title: Text("Bags"),
                      ),
                    ),
                    Divider(height: 0.0),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: ListTile(
                        title: Text("Shoes"),
                      ),
                    ),
                    Divider(height: 0.0),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: ListTile(
                        title: Text("Accessories & Beauty"),
                      ),
                    ),
                    Divider(height: 0.0),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: ListTile(
                        title: Text("Plus Size"),
                      ),
                    ),
                    Divider(height: 0.0),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: ListTile(
                        title: Text("Summer"),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 5.0,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(12.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          height: 140.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/images/banner.jpg",
                              ),
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                          child: SizedBox(),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        CategoryContainer(name: "Hot"),
                        CategoryContainer(name: "Tops"),
                        CategoryContainer(name: "Lingeries"),
                        CategoryContainer(name: "Accessories"),
                      ],
                    ),
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
