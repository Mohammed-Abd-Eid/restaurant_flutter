// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:test5/components/constant.dart';
import 'package:test5/models/accounts/changePassword.dart';
import 'package:test5/models/accounts/myProfile.dart';
import 'package:test5/models/product/category.dart';
import 'package:test5/models/product/favorite.dart';
import 'package:test5/models/product/order-tracking.dart';
import 'package:test5/models/product/shopping.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    final myYTheme =
        Theme.of(context).copyWith(dividerColor: Colors.transparent);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName:
                    Text("Mohammed Eid", style: TextStyle(color: Colors.black)),
                accountEmail: Text("MohammedEid@gmailcom",
                    style: TextStyle(color: Colors.black54)),
                currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                    backgroundColor: primaryColor,
                    child: Icon(
                      Icons.account_circle_outlined,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ),
                decoration: BoxDecoration(color: Colors.grey[300]),
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoryScreen(),
                        ),
                      );
                    },
                    child: ListTile(
                      title: Text("قائمة المأكولات",
                          style: TextStyle(fontSize: 16)),
                      trailing: Icon(Icons.keyboard_arrow_left,
                          color: Colors.black87, size: 22),
                    ),
                  ),
                  Divider(color: Colors.grey[500], endIndent: 10, indent: 10),
                  Theme(
                    data: myYTheme,
                    child: ExpansionTile(
                      title: Text("حسابي"),
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyProfile(),
                              ),
                            );
                          },
                          child: ListTile(
                            title: Text("تغيير الاعدادات الشخصية",
                                style: TextStyle(fontSize: 16)),
                            trailing: Icon(Icons.keyboard_arrow_left,
                                color: Colors.black87, size: 22),
                          ),
                        ),
                        Divider(
                            color: Colors.grey[500], endIndent: 10, indent: 10),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ChangePassword(),
                              ),
                            );
                          },
                          child: ListTile(
                            title: Text("تغيير كلمة المرور",
                                style: TextStyle(fontSize: 16)),
                            trailing: Icon(Icons.keyboard_arrow_left,
                                color: Colors.black87, size: 22),
                          ),
                        ),
                        Divider(
                            color: Colors.grey[500], endIndent: 10, indent: 10),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ShoppingScreen(),
                              ),
                            );
                          },
                          child: ListTile(
                            title:
                                Text("طلباتي", style: TextStyle(fontSize: 16)),
                            trailing: Icon(Icons.keyboard_arrow_left,
                                color: Colors.black87, size: 22),
                          ),
                        ),
                        Divider(
                            color: Colors.grey[500], endIndent: 10, indent: 10),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => OrderTracking(),
                              ),
                            );
                          },
                          child: ListTile(
                            title: Text("تتبع الطلبيات",
                                style: TextStyle(fontSize: 16)),
                            trailing: Icon(Icons.keyboard_arrow_left,
                                color: Colors.black87, size: 22),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(color: Colors.grey[500], endIndent: 10, indent: 10),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FavoriteScreen(),
                        ),
                      );
                    },
                    child: ListTile(
                      title: Text("مفضلاتي", style: TextStyle(fontSize: 16)),
                      trailing: Icon(Icons.keyboard_arrow_left,
                          color: Colors.black87, size: 22),
                    ),
                  ),
                  Divider(color: Colors.grey[500], endIndent: 10, indent: 10),
                  InkWell(
                    onTap: () {},
                    child: ListTile(
                      title: Text("من نحن", style: TextStyle(fontSize: 16)),
                      trailing: Icon(Icons.keyboard_arrow_left,
                          color: Colors.black87, size: 22),
                    ),
                  ),
                  Divider(color: Colors.grey[500], endIndent: 10, indent: 10),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
