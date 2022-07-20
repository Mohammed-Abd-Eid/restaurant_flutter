// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test5/components/constant.dart';
import 'package:test5/models/product/shopping.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 15),
            children: [
              imageProduct(),
              SizedBox(height: 10),
              Directionality(
                textDirection: TextDirection.rtl,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "السمك المشوي المدخن",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "(مراجعة2548)4.9",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Container(
                            child: IconButton(
                              onPressed: () {},
                              icon: FaIcon(
                                FontAwesomeIcons.solidStar,
                                color: Colors.yellow,
                                size: 23,
                              ),
                            ),
                          ),
                          Spacer(),
                          Text(
                            "33 Calories",
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Container(
                            child: IconButton(
                              onPressed: () {},
                              icon: FaIcon(
                                FontAwesomeIcons.fire,
                                color: primaryColor,
                                size: 23,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيله هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "وقت التوصيل ",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            InkWell(
                                child: Row(
                              children: [
                                Text(
                                  "20-30 min",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.access_alarms_rounded,
                                  color: primaryColor,
                                ),
                              ],
                            )),
                          ],
                        ),
                        Spacer(),
                        Container(
                          margin: EdgeInsets.only(top: 40),
                          child: InkWell(
                            onTap: () {},
                            child: Row(
                              children: [
                                Text(
                                  "Watch Video",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.play_circle,
                                  color: Colors.orangeAccent,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 25),
              Container(
                margin: EdgeInsets.only(bottom: 20),
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                decoration: BoxDecoration(
                  color: primaryColor,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[100]!,
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 7))
                  ],
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Row(
                  children: [
                    Text(
                      "5.65 &",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                        decoration: BoxDecoration(
                          color: primaryColor.withOpacity(0.01),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.deepOrangeAccent.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 3,
                                offset: Offset(0, 1))
                          ],
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.deepOrangeAccent
                                          .withOpacity(0.5),
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      offset: Offset(0, 1))
                                ],
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.shopping_bag,
                                    color: Colors.orangeAccent),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "اضافة الى السلة",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 120,
            child: headerBuilder(),
          )
        ],
      ),
    );
  }

  Widget headerBuilder() {
    return Container(
      margin: EdgeInsets.only(top: 15),
      padding: EdgeInsets.all(15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[100]!,
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 1))
              ],
              borderRadius: BorderRadius.circular(15),
            ),
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back_ios, color: primaryColor),
                padding: EdgeInsets.only(left: 7)),
          ),
          Spacer(),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Colors.grey[100]!,
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: Offset(0, 1))
              ],
              borderRadius: BorderRadius.circular(15),
            ),
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ShoppingScreen()));
              },
              icon: Icon(Icons.shopping_bag, color: primaryColor),
            ),
          ),
        ],
      ),
    );
  }

  Widget imageProduct() {
    double myHeight = MediaQuery.of(context).size.height / 6;
    return Container(
      margin: EdgeInsets.only(top: 30),
      height: myHeight * 2.8,
      padding: EdgeInsets.only(bottom: 10, top: 0),
      decoration: BoxDecoration(
        color: Colors.white70,
        boxShadow: [
          BoxShadow(
              color: Colors.grey[100]!,
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0, 7))
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      child: Column(
        children: [
          Image.asset(
            "assets/images/pro1.jpg",
            fit: BoxFit.fill,
            height: myHeight * 2.3,
          ),
          SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[100]!,
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 7))
                  ],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  icon: FaIcon(
                    FontAwesomeIcons.plus,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text("1 kg",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.orangeAccent,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey[100]!,
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: Offset(0, 7))
                  ],
                  borderRadius: BorderRadius.circular(15),
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: FaIcon(
                    FontAwesomeIcons.minus,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
