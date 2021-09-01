import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:emarket/Resorses/resources.dart';
import 'package:emarket/Resorses/string_resourc.dart';

class Favorits extends StatefulWidget {
  @override
  _FavoritsState createState() => _FavoritsState();
}

class _FavoritsState extends State<Favorits> {
  @override
  Widget build(BuildContext context) {
    // double card1 = MediaQuery.of(context).size.height * .36;
    // double card2 = MediaQuery.of(context).size.height * .17;

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
        title: Text(str_favorits),
      ),
      body: SingleChildScrollView(
        // child: Container(
        //
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: size.height * .08),
              ////////////////////////////////////////////////// card 1
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                elevation: 5.0,
                color: white,
                child: Container(
                  /////////////////////////////-----size card--------//
                  height: size.height * .17,
                  width: size.width * .88,
                  child: Row(
                    children: [
                      //image
                      Stack(
                        children: [
                          Padding(padding: EdgeInsets.only(right: 50.0)),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset('images/img2.png'),
                          ),
                        ],
                      ),

                      Column(
                        children: [
                          //texts
                          Padding(
                            padding: EdgeInsets.only(
                              top: size.height * .03,
                              left: size.width * .05,
                            ),
                            child: Text(
                              str_proudcat,
                              style: TextStyle(
                                fontSize: 15.0,
                                color: blac,
                                fontWeight: FontWeight.bold,
                                // fontFamily: stc,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: EdgeInsets.only(
                                top: size.height * .010, right: 40.0),
                            child: Text(
                              str_priceproudact,
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: EdgeInsets.only(
                                top: size.height * .010, right: 40.0),
                            child: Text(
                              str_soleprice,
                              style: TextStyle(
                                decorationColor: Colors.grey,
                                decorationStyle: TextDecorationStyle.solid,
                                decoration: TextDecoration.lineThrough,
                                color: Colors.grey,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                left: size.width * .205, bottom: 8.0),
                            width: 35,
                            height: 35,
                            child: Image.asset(
                                'assets/images/big-chariot-blue.png'),
                          ),
                          Container(
                            width: 30,
                            height: 30,
                            margin: EdgeInsets.only(
                                left: size.width * .20, top: size.width * .10),
                            child: Image.asset(
                              'assets/images/like2.png',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ////////////////////////////////////////////end cart1

            Container(
              margin: EdgeInsets.only(top: size.height * .02),
              /////////////////////////////////////////////card 2
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                elevation: 5.0,
                color: white,
                child: Container(
                  //-----size card--------//
                  height: size.height * .17,
                  width: size.width * .88,

                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 60.0)),
                          Container(
                            height: size.height * .17,
                            width: size.width * .36,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset('images/img6.jpeg'),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          ////////////////////////////////////texts
                          new Padding(
                            padding: EdgeInsets.only(
                              top: size.height * .03,
                            ),
                            child: Text(
                              str_proudcat,
                              style: TextStyle(
                                fontSize: 15.0,
                                color: blac,
                                fontWeight: FontWeight.bold,
                                // fontFamily: stc,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: EdgeInsets.only(
                                top: size.height * .015, right: 70.0),
                            child: Text(
                              str_priceproudact,
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: EdgeInsets.only(
                                top: size.height * .015, right: 70.0),
                            child: Text(
                              str_soleprice,
                              style: TextStyle(
                                decorationColor: Colors.grey,
                                decorationStyle: TextDecorationStyle.solid,
                                decoration: TextDecoration.lineThrough,
                                color: Colors.grey,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                left: size.width * .205, bottom: 8.0),
                            width: 35,
                            height: 35,
                            child: Image.asset(
                                'assets/images/big-chariot-blue-2.png'),
                          ),
                          Container(
                            width: size.width * .06,
                            height: size.height * .05,
                            margin: EdgeInsets.only(
                                left: size.width * .19, top: size.height * .05),
                            child:
                                // IconButton(
                                // icon:
                                Image.asset(
                              'images/unlike23.png',
                            ),
                            // onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ////////////////////////////////////////////////End card 2
            Container(
              margin: EdgeInsets.only(top: size.height * .02),
              //////////////////////////////////////////////card 3
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                elevation: 5.0,
                color: white,
                child: Container(
                  //-----size card--------//
                  height: size.height * .17,
                  width: size.width * .88,
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 60.0)),
                          Container(
                            height: size.height * .17,
                            width: size.width * .36,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset('images/img4.jpeg'),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          ////////////////////////////////////texts
                          new Padding(
                            padding: EdgeInsets.only(
                              top: size.height * .03,
                            ),
                            child: Text(
                              str_proudcat,
                              style: TextStyle(
                                fontFamily: stc_font,
                                fontSize: 15.0,
                                color: blac,
                                fontWeight: FontWeight.bold,
                                // fontFamily: stc,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: EdgeInsets.only(
                                top: size.height * .006, right: 70.0),
                            child: Text(
                              str_priceproudact,
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                                fontFamily: stc_font,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: EdgeInsets.only(
                                top: size.height * .007, right: 70.0),
                            child: Text(
                              str_soleprice,
                              style: TextStyle(
                                // fontFamily: stc_font,
                                decorationColor: Colors.grey,
                                decorationStyle: TextDecorationStyle.solid,
                                decoration: TextDecoration.lineThrough,
                                color: Colors.grey,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    left: size.width * .205, bottom: 8.0),
                                width: 35,
                                height: 35,
                                child: Image.asset(
                                    'assets/images/big-chariot-blue.png'),
                              ),
                              Container(
                                width: 30,
                                height: 30,
                                margin: EdgeInsets.only(
                                    left: size.width * .21,
                                    top: size.width * .10),
                                child: Image.asset(
                                  'assets/images/like2.png',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
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
