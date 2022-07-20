// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names, sort_child_properties_last, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:test5/components/constant.dart';
import 'package:timeline_tile/timeline_tile.dart';

class OrderTracking extends StatefulWidget {
  const OrderTracking({Key? key}) : super(key: key);

  @override
  State<OrderTracking> createState() => _OrderTrackingState();
}

class _OrderTrackingState extends State<OrderTracking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.3,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: Text(
              "تتبع الطلب",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
        ),
        actions: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "محادثة",
                style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 18),
              ),
            ],
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.send_and_archive_rounded, color: primaryColor),
          )
        ],
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: ListView(
          children: [
            SizedBox(height: 5),
            Text(
              "الوقت المقدر لاستلام الطلبية",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 7),
            Text(
              "05:45PM",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: primaryColor),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 7),
            Divider(endIndent: 10, indent: 10),
            Card(
              elevation: 0,
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    padding: EdgeInsets.all(10),
                    child: Image.asset(
                      "assets/images/istockphoto-1270067126-612x612.jpg",
                      fit: BoxFit.fill,
                      width: 100,
                      height: 100,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "your Rider",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Mohammed Eid",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: primaryColor,
                          ),
                          SizedBox(width: 3),
                          Text(
                            "4.45",
                            style: TextStyle(
                              fontSize: 14,
                              color: primaryColor,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 7),
                      Text(
                        "142 (تصويت)",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            getTimeLine(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        child: MaterialButton(
          onPressed: () {},
          child: Container(
            margin: EdgeInsets.only(bottom: 10, top: 10),
            width: MediaQuery.of(context).size.width / 1.2,
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(25),
            ),
            child: Text(
              "إلغاء الطلبية",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }

  Widget getTimeLine() {
    double heightTime = 70;
    return Container(
      color: Colors.grey[100],
      margin: EdgeInsets.only(top: 20, bottom: 50),
      child: Column(
        children: [
          Container(
            height: heightTime,
            child: TimelineTile(
              indicatorStyle: IndicatorStyle(height: 1),
              lineXY: 0.2,
              alignment: TimelineAlign.manual,
              endChild: Container(
                padding: EdgeInsets.only(right: 20),
                constraints: const BoxConstraints(
                  minHeight: 50,
                ),
                child: Row(
                  children: [
                    Text(
                      "تأكيد الطلبية",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: heightTime,
            child: TimelineTile(
              indicatorStyle: IndicatorStyle(height: 1),
              lineXY: 0.2,
              alignment: TimelineAlign.manual,
              endChild: Container(
                padding: EdgeInsets.only(right: 20),
                constraints: const BoxConstraints(
                  minHeight: 120,
                ),
                child: Row(
                  children: [
                    Text(
                      "تجهيز الطلبية",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: heightTime,
            child: TimelineTile(
              indicatorStyle: IndicatorStyle(height: 1),
              lineXY: 0.2,
              alignment: TimelineAlign.manual,
              endChild: Container(
                padding: EdgeInsets.only(right: 20),
                constraints: const BoxConstraints(
                  minHeight: 120,
                ),
                child: Row(
                  children: [
                    Text(
                      "تم تجهيزالطلبية في المطعم",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: heightTime,
            child: TimelineTile(
              indicatorStyle: IndicatorStyle(height: 1),
              lineXY: 0.2,
              alignment: TimelineAlign.manual,
              endChild: Container(
                padding: EdgeInsets.only(right: 20),
                constraints: const BoxConstraints(
                  minHeight: 120,
                ),
                child: Row(
                  children: [
                    Text(
                      "الديلفيري استلم الطلبية",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: heightTime,
            child: TimelineTile(
              indicatorStyle: IndicatorStyle(height: 1),
              lineXY: 0.2,
              alignment: TimelineAlign.manual,
              endChild: Container(
                padding: EdgeInsets.only(right: 20),
                constraints: const BoxConstraints(
                  minHeight: 120,
                ),
                child: Row(
                  children: [
                    Text(
                      "ديلفري قريب من المكان",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
