// ignore_for_file: prefer_const_constructors, sort_child_properties_last, non_constant_identifier_names, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:test5/components/constant.dart';
import 'package:test5/models/product/product.dart';

class SubCategory extends StatefulWidget {
  final String cat_id;
  final String cat_name;

  SubCategory({required this.cat_id, required this.cat_name});

  @override
  State<SubCategory> createState() => _SubCategoryState();
}

class _SubCategoryState extends State<SubCategory> {
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
                widget.cat_name,
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
                cat_count: itemsCat[index]["cat_count"]!,
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
  final String cat_count;

  const SingleList({
    super.key,
    required this.cat_id,
    required this.cat_name,
    required this.cat_image,
    required this.cat_count,
  });

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
                MaterialPageRoute(builder: (context) => ProductScreen()),
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
              subtitle: Text(cat_count),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ),
          Divider(endIndent: 10, indent: 10),
        ],
      ),
    );
  }
}
