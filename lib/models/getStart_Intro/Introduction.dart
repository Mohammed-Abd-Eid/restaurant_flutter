// ignore_for_file: file_names, sized_box_for_whitespace, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:page_indicator/page_indicator.dart';
import 'package:test5/components/constant.dart';
import 'package:test5/models/LogeIn_Register/register.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  // عنوان الصفحة مع روابط الصور ومه التعريف
  var items = [
    {
      "title": "ابحث عن الماكولات التي تحبها",
      "info": "أفضل الاطعمة والمأكولات تجدونها في تطبيقنا ومن هنا يمكنك البدأ",
      "image": "assets/images/tip1.png",
    },
    {
      "title": "ابحث عن الماكولات التي تحبها",
      "info": "أفضل الاطعمة والمأكولات تجدونها في تطبيقنا ومن هنا يمكنك البدأ",
      "image": "assets/images/tip2.png",
    },
    {
      "title": "ابحث عن الماكولات التي تحبها",
      "info": "أفضل الاطعمة والمأكولات تجدونها في تطبيقنا ومن هنا يمكنك البدأ",
      "image": "assets/images/tip3.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height / 5;
    double myWidth = MediaQuery.of(context).size.width / 5;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.1,
        title: MaterialButton(
          onPressed: () {},
          child: Container(
            alignment: AlignmentDirectional.centerEnd,
            child: Text(
              "تسجيل دخول",
              style: TextStyle(
                  color: primaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w400),
              textDirection: TextDirection.rtl,
            ),
          ),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: myHeight * 3,
              child: PageIndicatorContainer(
                shape: IndicatorShape.circle(),
                align: IndicatorAlign.bottom,
                indicatorColor: Colors.grey[300]!,
                indicatorSelectorColor: primaryColor,
                length: items.length,
                indicatorSpace: 10.0,
                child: PageView.builder(
                  physics: AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                  itemBuilder: (BuildContext context, index) {
                    return SingleTips(
                      title: items[index]['title']!,
                      info: items[index]['info']!,
                      images: items[index]['image']!,
                    );
                  },
                  // reverse: true,
                ),
              ),
            ),
            SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return RegisterScreen();
                }));
              },
              child: Container(
                  width: myWidth * 3.2,
                  padding: EdgeInsets.symmetric(
                    vertical: 7,
                    horizontal: 30,
                  ),
                  alignment: AlignmentDirectional.center,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  child: Text(
                    "انشاء حساب",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  )),
            ),
            SizedBox(height: 15),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: myWidth * 3.2,
                alignment: AlignmentDirectional.center,
                padding: EdgeInsets.symmetric(
                  vertical: 7,
                  horizontal: 15,
                ),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      textDirection: TextDirection.rtl,
                      Icons.facebook,
                      color: Colors.white,
                      size: 24,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "التسجيل بواسطة FaceBook",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
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

class SingleTips extends StatelessWidget {
  final String title;
  final String info;
  final String images;

  const SingleTips({
    required this.title,
    required this.info,
    required this.images,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      textDirection: TextDirection.rtl,
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
            child: Image.asset(
              images,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(5),
          child: Text(
            title,
            style: TextStyle(
              color: primaryColor,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            info,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
