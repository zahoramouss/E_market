import 'package:emarket/Resorses/resources.dart';
import 'package:flutter/material.dart';

// import '../bloc.navigation_bloc/navigation_bloc.dart';
import '../bloc.navigation_bloc/navigation_bloc.dart';

class FAQs extends StatelessWidget with NavigationStates {
  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width * .85;

    double _height = MediaQuery.of(context).size.height * .07;
    double _height2 = MediaQuery.of(context).size.height * .50;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/header2.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(
          'Faqs',
          style: TextStyle(fontFamily: stc_font),
        ),
      ),
      body: Column(
        children: [
          ///////////box1

          Container(
            width: _width,
            height: _height,
            margin: EdgeInsets.only(top: 10, left: 50),
            decoration: BoxDecoration(
              color: Color(0xfff6fafe),
              borderRadius: BorderRadius.all(
                  Radius.circular(5.0) //         <--- border radius here
                  ),
              border: Border.all(
                //                   <--- left side
                color: Color(0xffb7d9ff),
                width: 3.0,
              ),
            ),
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 12.0, left: 12.0),
                  child: Text(
                    'How do I make a claim on a product?',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: size.width * .75),
                  child: IconButton(
                    icon: Image.asset(
                      'assets/images/down.png',
                      // color: bl,
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
          Container(
              // duration: const Duration(seconds: 1),
              width: _width,
              height: _height2,
              // _height2,
              margin: EdgeInsets.only(top: 10, left: 50),
              decoration: BoxDecoration(
                color: Color(0xfff6fafe),
                borderRadius: BorderRadius.all(
                    Radius.circular(5.0) //         <--- border radius here
                    ),
                border: Border.all(
                  //                   <--- left side
                  color: Color(0xffb7d9ff),
                  width: 3.0,
                ),
              ),
              child: Stack(
                children: [
                  Center(
                      child: Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 10.0, left: 5.0)),
                      Container(
                        child: Text(
                          'How long is the return period?',
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 12.0, left: 12.0)),
                      Text(
                        'How long is the return period?',
                        style: TextStyle(fontSize: 16.0),
                      )
                    ],
                  )),
                  Container(
                    margin: EdgeInsets.only(left: size.width * .75),
                    child: IconButton(
                      icon: Image.asset(
                        'assets/images/down.png',
                        // color: bl,
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              )),

          ///////box3
          Container(
            width: _width,
            height: _height,
            margin: EdgeInsets.only(top: 10, left: 50),
            decoration: BoxDecoration(
              color: Color(0xfff6fafe),
              borderRadius: BorderRadius.all(
                  Radius.circular(5.0) //         <--- border radius here
                  ),
              border: Border.all(
                //                   <--- left side
                color: Color(0xffb7d9ff),
                width: 3.0,
              ),
              // top: BorderSide(
              //   //                    <--- top side
              //   color: Color(0xffb7d9ff),
              //   width: 3.0,
              // ),
              // bottom: BorderSide(
              //   color: Color(0xffb7d9ff),
              //   width: 3.0,
              // ),
              // right: BorderSide(
              //   color: Color(0xffb7d9ff),
              //   width: 3.0,
              // )
              // ),
            ),
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 12.0, left: 12.0),
                  child: Text(
                    'How do I make an exchange?',
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: size.width * .75),
                  child: IconButton(
                    icon: Image.asset(
                      'assets/images/down.png',
                      // color: bl,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
