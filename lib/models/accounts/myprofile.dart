// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:test5/components/Contents/contents.dart';
import 'package:test5/components/constant.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    double myWidth = MediaQuery.of(context).size.width / 5;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 0.1,
        leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            )),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          textDirection: TextDirection.rtl,
          children: [
            Expanded(
              child: Form(
                child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Text(
                        "تغيير الاعدادات الشخصية",
                        style: TextStyle(
                            color: primaryColor,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                      child: TextFormField(
                        textDirection: TextDirection.rtl,
                        decoration: InputDecoration(
                          hintText: "تغيير الإسم",
                          border: InputBorder.none,
                          hintTextDirection: TextDirection.rtl,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                      child: TextFormField(
                        textDirection: TextDirection.rtl,
                        decoration: InputDecoration(
                          hintText: "البريد الاكتروني",
                          border: InputBorder.none,
                          hintTextDirection: TextDirection.rtl,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                      child: TextFormField(
                        textDirection: TextDirection.rtl,
                        decoration: InputDecoration(
                          hintText: "كلمة المرور",
                          border: InputBorder.none,
                          hintTextDirection: TextDirection.rtl,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                      child: TextFormField(
                        textDirection: TextDirection.rtl,
                        decoration: InputDecoration(
                          hintText: "تغيير رقم الهاتف",
                          border: InputBorder.none,
                          hintTextDirection: TextDirection.rtl,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    defaultButton(myWidth * 3.2, primaryColor, "حفظ",
                        Colors.white, () {}),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
