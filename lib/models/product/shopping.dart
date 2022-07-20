// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, non_constant_identifier_names, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test5/components/Contents/contents.dart';
import 'package:test5/components/constant.dart';

class ShoppingScreen extends StatefulWidget {
  const ShoppingScreen({Key? key}) : super(key: key);

  @override
  State<ShoppingScreen> createState() => _ShoppingScreenState();
}

class _ShoppingScreenState extends State<ShoppingScreen> {
  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height / 4;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          "data",
          textAlign: TextAlign.center,
        ),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(right: 15, left: 15, top: 25),
              height: myHeight * 1.2,
              color: Colors.grey[100],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Text(
                          "المكونات",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Spacer(),
                      Text(
                        "5.05 &",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey[100]!,
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: Offset(0, 7))
                      ],
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.grey[300]!),
                    ),
                    child: Container(
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                        //  border: Border.all(color: Colors.grey[300]!),
                      ),
                      child: Image(
                        image: AssetImage(
                          "assets/images/pro1.jpg",
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Text(
                      "الوجبة",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: myHeight * 2,
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return ListPro(
                    pro_id: itemsPro[index]["pro_id"]!,
                    pro_name: itemsPro[index]["pro_name"]!,
                    pro_salary: itemsPro[index]["pro_salary"]!,
                    pro_image: itemsPro[index]["pro_image"]!,
                  );
                },
                itemCount: itemsPro.length,
                physics: AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 15),
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: InkWell(
                onTap: () {
                  showSheetMessage(context);
                },
                child: Text(
                  "تأكيد الطلبية",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
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

void showSheetMessage(
  context,
) {
  showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height / 1.1,
        maxHeight: MediaQuery.of(context).size.height,
      ),
      context: context,
      builder: (BuildContext context) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: Container(
            height: MediaQuery.of(context).size.height / 1.2,
            margin: EdgeInsets.only(top: 30),
            child: ListView(
              children: [
                Icon(Icons.done, color: Colors.yellowAccent, size: 100),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 70),
                  child: Text(
                    "شكرا لك على اختيارك لمنتجاتنا.",
                    style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 70),
                  alignment: Alignment.center,
                  child: Text(
                    "يمكنك متابعة توصيل طلباتك من هذا الاختيار",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 10),
                defaultButton(
                    200.0, primaryColor, "تتبع طلباتي", Colors.white, () {}),
                SizedBox(height: 10),
                defaultButton(200.0, Colors.white, " الانتقال الى الماكولات",
                    Colors.black, () {}),
                SizedBox(height: 10),
              ],
            ),
          ),
        );
      });
}

class ListPro extends StatelessWidget {
  final String pro_id;
  final String pro_name;
  final String pro_salary;
  final String pro_image;

  ListPro(
      {required this.pro_id,
      required this.pro_name,
      required this.pro_salary,
      required this.pro_image});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Container(
              width: 75,
              height: 75,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[100]!,
                      spreadRadius: 1,
                      blurRadius: 1,
                      offset: Offset(0, 7))
                ],
                borderRadius: BorderRadius.circular(100),
                border: Border.all(color: Colors.grey[300]!),
              ),
              child: Container(
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  //  border: Border.all(color: Colors.grey[300]!),
                ),
                child: Image(
                  image: AssetImage(
                    pro_image,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  pro_name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(height: 1),
                Text(
                  pro_salary,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Spacer(),
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.plus,
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
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: FaIcon(
                      FontAwesomeIcons.minus,
                      size: 16,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
