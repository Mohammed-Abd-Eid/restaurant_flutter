// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names, sized_box_for_whitespace, sort_child_properties_last, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test5/components/constant.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        actions: [],
        title: Text("مفضلاتي"),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Container(
          child: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              return SingleList(
                pro_id: itemsPro[index]["pro_id"]!,
                pro_name: itemsPro[index]["pro_name"]!,
                pro_image: itemsPro[index]["pro_image"]!,
                cat_like: itemsPro[index]["cat_like"]!,
                pro_salary: itemsPro[index]["pro_salary"]!,
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
  final String pro_salary;

  const SingleList({
    super.key,
    required this.pro_id,
    required this.pro_name,
    required this.pro_image,
    required this.cat_like,
    required this.pro_salary,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[100],
      elevation: 1,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.heart,
                  color: primaryColor,
                ),
              ),
            ),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width / 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(pro_image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              child: Text(
                pro_name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  pro_salary,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    Icon(
                      Icons.star_border,
                      color: Colors.yellowAccent,
                    ),
                    Text(
                      cat_like,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
