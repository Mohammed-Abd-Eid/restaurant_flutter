// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, use_key_in_widget_constructors, sort_child_properties_last, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test5/components/constant.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        actions: [],
        title: Text("المأكولات"),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return SingleList(
                pro_id: itemsPro[index]["pro_id"]!,
                pro_name: itemsPro[index]["pro_name"]!,
                pro_image: itemsPro[index]["pro_image"]!,
                cat_like: itemsPro[index]["cat_like"]!,
                offers: itemsPro[index]["offers"]!,
              );
            },
            itemCount: itemsPro.length,
          ),
        ),
      ),
    );
  }
}

class SingleList extends StatelessWidget {
  final String pro_id;
  final String pro_name;
  final String pro_image;
  final String cat_like;
  final String offers;

  const SingleList({
    super.key,
    required this.pro_id,
    required this.pro_name,
    required this.pro_image,
    required this.cat_like,
    required this.offers,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[100],
      elevation: 1,
      child: Container(
        height: 120,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  padding: EdgeInsets.all(10),
                  child: Image.asset(
                    pro_image,
                    fit: BoxFit.fill,
                    width: 100,
                    height: 100,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                Column(
                  children: [
                    Text(
                      pro_name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "قهوة , طعام شرقي \$\$",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: primaryColor,
                        ),
                        Text(
                          cat_like,
                          style: TextStyle(
                            fontSize: 14,
                            color: primaryColor,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          "142 (تصوت)",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Column(
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.heart,
                            color: Colors.grey[300],
                          )),
                      SizedBox(height: 25),
                      Container(
                        child: offers == "1"
                            ? Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 5),
                                decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius: BorderRadius.circular(25)),
                                child: Text(
                                  "عرض",
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            : Text(""),
                      )
                    ],
                  ),
                ),
              ],
            ),
            //   Divider(endIndent: 10, indent: 10),
          ],
        ),
      ),
    );
  }
}
