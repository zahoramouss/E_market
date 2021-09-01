import 'package:emarket/sidebar/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:emarket/Resorses/resources.dart';
import 'package:emarket/Resorses/string_resourc.dart';
import 'package:emarket/widgets/widgets.dart';

class Home1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Homestate();
  }
}

class Homestate extends State<Home1> {
  TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double imgh = MediaQuery.of(context).size.height * .1513;
    double imgw = MediaQuery.of(context).size.width * .4445;
    double widh = MediaQuery.of(context).size.height * .06555;

    bool payed = false;
    int _value = 1;
    bool fav = false;

    String all = 'all';
    String toys = 'toys';
    String bed = 'beds';
    String Clothing = 'clothing';
    String Strollers = 'strollers';
    String Books = 'books';

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //header
            header(context, str_homeheader, search),
            //iconbar

//////////////////////////saleaccount
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  /* crossAxisAlignment: CrossAxisAlignment.start,*/
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 10),
                      child: Text(
                        str_sale,
                        style: TextStyle(
                          fontFamily: stc_font,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: darkblue,
                        ),
                      ),
                    ),
                    Container(
                      height: 159,
                      color: Colors.red,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 12,
                          itemBuilder: (BuildContext context, int position) {
                            return salediscount(true);
                          }),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 10),
                      child: Text(
                        str_most,
                        style: TextStyle(
                          fontFamily: stc_font,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: darkblue,
                        ),
                      ),
                    ),
                    Container(
                      height: 159,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 12,
                          itemBuilder: (BuildContext context, int position) {
                            return Container(
                              width: imgw,
                              height: (imgh + widh), //wid
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(radius),
                                    topLeft: Radius.circular(radius),
                                    topRight: Radius.circular(radius),
                                    bottomRight: Radius.circular(radius),
                                  ),
                                  // color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      spreadRadius: 0,
                                      blurRadius: 5,
                                      offset: Offset(0, 2),
                                      color: Color(0xff47a8b9cd),
                                    )
                                  ]),
                              margin: EdgeInsets.only(top: 200, right: 75),
                              child: Column(
                                children: [
                                  Container(
                                      //color:Colors.red,
                                      // color:Colors.amber,
                                      child: Stack(
                                    children: [
//////////////////////////////////////////////////////////////////////imqges
                                      ClipRRect(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(radius),
                                            topLeft: Radius.circular(radius)),
                                        child: Image.asset(
                                          'assets/images/img2.png',
                                          width: imgw,
                                          height: imgh,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.only(right: 120, top: 0),
                                        child: IconButton(
                                          icon: (fav)
                                              ? Image.asset(
                                                  'assets/images/like2.png',
                                                  scale: 5,
                                                )
                                              : Image.asset(
                                                  'assets/images/unlike23.png',
                                                  scale: 5,
                                                ),
                                          onPressed: () {
                                            setState(() {
                                              fav = !fav;
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  )),
                                  Expanded(
                                    child: Container(
                                      margin: EdgeInsets.only(left: 12),
                                      child: Column(
                                        children: [
                                          Container(
                                            width: imgw,
                                            height: widh,
                                            decoration: BoxDecoration(
                                              //color: Colors.red,
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(radius),
                                                bottomRight:
                                                    Radius.circular(radius),
                                              ),
                                            ),

                                            //right:( MediaQuery.of(context).size.width*45/100),
                                            child: new Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                //  mainAxisAlignment: MainAxisAlignment.spaceAround,

                                                children: [
                                                  Container(
                                                    child: Text(
                                                      str_prname,
                                                      style: TextStyle(
                                                        fontFamily: stc_font,
                                                        fontSize: 14.5,
                                                        color: blac,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                      // padding: EdgeInsets.only(top: 10),
                                                      child: Align(
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    child: Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceAround,
                                                      children: [
                                                        Expanded(
                                                          child: Text(str_price,
                                                              style: TextStyle(
                                                                fontFamily:
                                                                    stc_font,
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: ongo,
                                                              )),
                                                        ),
                                                        GestureDetector(
                                                          //color: Colors.green,
                                                          child: (payed)
                                                              ? Image.asset(
                                                                  'assets/images/big-chariot-orange-2.png',
                                                                  scale: 6)
                                                              : Image.asset(
                                                                  'assets/images/big-chariot-orange.png',
                                                                  scale: 6,
                                                                ),
                                                          onDoubleTap: () {
                                                            print(payed);

                                                            setState(() {
                                                              payed = true;
                                                            });
                                                            print(payed);
                                                          },
                                                        ),
                                                      ],
                                                    ),
                                                  )),
                                                ]),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 10),
                      child: Text(
                        str_newarrival,
                        style: TextStyle(
                          fontFamily: stc_font,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: darkblue,
                        ),
                      ),
                    ),
                    Container(
                        color: Colors.brown,
                        //height:300,
                        child: ListView(children: [
                          GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithMaxCrossAxisExtent(
                                      maxCrossAxisExtent: 140),
                              itemCount: 3,
                              itemBuilder: (
                                BuildContext context,
                                int index,
                              ) {
                                return Container(
                                  height: 200,
                                  width: 200,
                                  color: Colors.brown,
                                  margin: EdgeInsets.only(right: 10, top: 10),
                                );
                              })
                        ]))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
