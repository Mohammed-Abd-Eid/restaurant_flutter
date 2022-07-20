// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:test5/components/Contents/contents.dart';
import 'package:test5/components/constant.dart';
import 'package:test5/models/LogeIn_Register/login.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
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
                        "إنشاء حساب جديد ",
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
                          hintText: "الإسم كاملا",
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
                          hintText: "رقم الهاتف",
                          border: InputBorder.none,
                          hintTextDirection: TextDirection.rtl,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    defaultButton(myWidth * 3.2, primaryColor, "تسجيل",
                        Colors.white, () {}),
                    SizedBox(height: 20),
                    Container(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "بمجرد الضغط على زر التسجيل هذا باعتباره انك موافق على سياسة الفريق",
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black54),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "لدي حساب حقا؟",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  defaultTextButton(
                      text: "الدخول",
                      function: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return LoginScreen();
                        }));
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
