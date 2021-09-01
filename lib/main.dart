import 'package:flutter/material.dart';

import 'screen/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'appstore',
      // routes: <String, WidgetBuilder>{
      //  Context context) => BottomNavBar(),
      // '/Payment': (BuildContext context) => Payment(),
      // '/Creat': (BuildContext context) => Creat(),
      // '/SideBar': (BuildContext context) => SideBar(),
      // '/MyOrdersPage': (BuildContext context) => MyOrdersPage(),
      // '/Faq': (BuildContext context) => Faq(),
      // '/Editpro': (BuildContext context) => Editpro(),
      // '/Home': (BuildContext context) => Home(),
      // '/Password': (BuildContext context) => Password(),
      // '/Password': (BuildContext context) => Password(),
      // '/Password': (BuildContext context) => Password(),
      // '/Password': (BuildContext context) => Password(),
      // '/Password': (BuildContext context) => Password(),
      // '/Password': (BuildContext context) => Password(),
      // '/Password': (BuildContext context) => Password(),
      // '/Password': (BuildContext context) => Password(),
      // '/Password': (BuildContext context) => Password(),
      // '/Password': (BuildContext context) => Password(),
      // '/Aboutas': (BuildContext context) => Aboutas(),
      // },
      home: Signin(),
    );
  }
}
