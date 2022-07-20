// ignore_for_file: prefer_const_constructors, sort_child_properties_last, non_constant_identifier_names, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:test5/components/constant.dart';
import 'package:test5/models/product/sub_category.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Text(
                "قائمة الماكولات",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          padding: EdgeInsets.only(top: 20),
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return SingleList(
                cat_id: itemsCat[index]["cat_id"]!,
                cat_name: itemsCat[index]["cat_name"]!,
                cat_image: itemsCat[index]["cat_image"]!,
              );
            },
            itemCount: itemsCat.length,
          ),
        ),
      ),
    );
  }
}

class SingleList extends StatelessWidget {
  final String cat_id;
  final String cat_name;
  final String cat_image;

  const SingleList(
      {super.key,
      required this.cat_id,
      required this.cat_name,
      required this.cat_image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      padding: EdgeInsets.symmetric(
        horizontal: 5,
      ),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SubCategory(
                    cat_id: cat_id,
                    cat_name: cat_name,
                  ),
                ),
              );
            },
            child: ListTile(
              leading: Container(
                height: 75,
                width: 75,
                padding: EdgeInsets.all(10),
                child: Image.asset(cat_image),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: primaryColor.withOpacity(0.15),
                ),
              ),
              title: Text(
                cat_name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Divider(endIndent: 10, indent: 10),
        ],
      ),
    );
  }
}
