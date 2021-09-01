import 'package:emarket/Resorses/string_resourc.dart';
import 'package:emarket/sidebar/sidebar.dart';
import 'package:flutter/material.dart';

import '../bloc.navigation_bloc/navigation_bloc.dart';
import 'package:emarket/Resorses/resources.dart';

class AboutUs extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/header2.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: new Text(
          str_about,
          style: TextStyle(fontFamily: stc_font),
        ),
        leading: Builder(
          builder: (context) => Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/side-menu-opener.png',
                    ),
                    fit: BoxFit.fill)),
            child: GestureDetector(
              onTap: () => Scaffold.of(context).openDrawer(),
            ),
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      drawer: SideBar(),
      body: Center(
        child: new Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: size.height * .035),
                padding: EdgeInsets.only(right: 34.0),
                child: Text(
                  'Little Munchkins was founded in 2020 by',
                  style: TextStyle(
                      color: blac,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Stc"),
                ),
              ),
              Container(
                child: Text(
                  'Mohamed and Ahmed with a vision of building',
                  style: TextStyle(
                      color: blac,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontFamily: stc_font),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 34.0),
                child: Text(
                  'the best online store in Gaza for children clothing.',
                  style: TextStyle(
                      color: blac,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontFamily: stc_font),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 34.0),
                child: Text(
                  'Our goal is to inspire our customers by',
                  style: TextStyle(
                      color: blac,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontFamily: stc_font),
                ),
              ),
              Container(
                child: Text(
                  'offering an exclusive shopping experience and ',
                  style: TextStyle(
                      color: blac,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontFamily: stc_font),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 34.0),
                child: Text(
                  'excellent customer service with the best',
                  style: TextStyle(
                      color: blac,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontFamily: stc_font),
                ),
              ),
              Container(
                child: Text(
                  'mixture of well-known and high-quality brands.',
                  style: TextStyle(
                      color: blac,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontFamily: stc_font),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 34.0),
                child: Text(
                  'Our product assortment is comprised of baby',
                  style: TextStyle(
                      color: blac,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontFamily: stc_font),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 34.0),
                child: Text(
                  'and childrens aposs, clothes, shoes, toys, strollers,',
                  style: TextStyle(
                      color: blac,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontFamily: stc_font),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 34.0),
                child: Text(
                  'car seats, maternity clothes, accessories and',
                  style: TextStyle(
                      color: blac,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontFamily: stc_font),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 50.0),
                child: Text(
                  'more for ages 0-3.',
                  style: TextStyle(
                      color: blac,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontFamily: stc_font),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
