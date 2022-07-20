// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, use_key_in_widget_constructors, non_constant_identifier_names, sort_child_properties_last, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:test5/components/constant.dart';
import 'package:test5/models/accounts/drower.dart';
import 'package:test5/models/product/product_detail.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

TextEditingController textController = TextEditingController();

class _MainScreenState extends State<MainScreen> {
  GlobalKey<ScaffoldState> _keyDrawer = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height / 6;
    double myWidth = MediaQuery.of(context).size.width / 5;

    return Container(
      child: Scaffold(
        key: _keyDrawer,
        endDrawer: MyDrawer(),
        backgroundColor: Colors.white,
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            height: myHeight * 6,
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.bottomRight,
                  margin: EdgeInsets.only(top: 30),
                  child: Text(
                    "التوصيل الى",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  child: Row(
                    children: [
                      Text(
                        "موقع الزبون",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: primaryColor,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        width: myWidth * 4,
                        padding: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.grey[200],
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.search),
                            hintText: "بحث طعام",
                            border: InputBorder.none,
                            hintTextDirection: TextDirection.rtl,
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            _keyDrawer.currentState!.openEndDrawer();
                          },
                          icon: Icon(
                            Icons.menu,
                            color: primaryColor,
                          )),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  height: myHeight,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
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
                Container(
                  height: myHeight * 3,
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return SingleListPro(
                        pro_id: itemsPro[index]["pro_id"]!,
                        pro_name: itemsPro[index]["pro_name"]!,
                        pro_desc: itemsPro[index]["pro_desc"]!,
                        pro_image: itemsPro[index]["pro_image"]!,
                      );
                    },
                    itemCount: itemsPro.length,
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: primaryColor,
          iconSize: 26,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: "المطعم",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_fire_department_outlined),
              label: "عروضي",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "حسابي",
            ),
          ],
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
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            height: 80,
            width: 80,
            padding: EdgeInsets.all(10),
            child: Image.asset(cat_image),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: primaryColor.withOpacity(0.15),
            ),
          ),
          SizedBox(height: 10),
          Text(
            cat_name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

class SingleListPro extends StatelessWidget {
  final String pro_id;
  final String pro_name;
  final String pro_desc;
  final String pro_image;

  const SingleListPro(
      {super.key,
      required this.pro_id,
      required this.pro_name,
      required this.pro_desc,
      required this.pro_image});

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height / 6;

    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ProductDetail()));
      },
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: myHeight * 2.5,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(pro_image),
                ),
              ),
            ),
            SizedBox(height: 5),
            Text(
              pro_name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              pro_desc,
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
