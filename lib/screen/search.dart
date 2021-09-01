import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:emarket/Resorses/resources.dart';
import 'package:emarket/Resorses/string_resourc.dart';
import '../widgets/widgets.dart';

class search extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return searchstate();
  }
}

class searchstate extends State<search> {
  bool payed = false;
  int _value = 1;
  bool fav = false;
  @override
  Widget build(BuildContext context) {
    TextEditingController search = TextEditingController();
    double apph = MediaQuery.of(context).size.height * .20;
    double tfheight = MediaQuery.of(context).size.height * .0563;
    double tfwidth = MediaQuery.of(context).size.width * .7777;
    double twidth = MediaQuery.of(context).size.width * .013;
    double mr = MediaQuery.of(context).size.height * .037;
    double m1 = MediaQuery.of(context).size.height * .04; //0267
    double leftm1 = MediaQuery.of(context).size.width * .0555;
    double leftm2 = MediaQuery.of(context).size.width * .013;
    double leftm3 = MediaQuery.of(context).size.width * .3694;
    double imgh = MediaQuery.of(context).size.height * .1513;
    double imgw = MediaQuery.of(context).size.width * .4445;
    double widh = MediaQuery.of(context).size.height * .071;
    double wid = MediaQuery.of(context).size.height * .25;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          child: backicon(),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                    height: apph,
                    child: Image.asset(
                      'assets/images/header3.png',
                      fit: BoxFit.cover,
                    )),
                Center(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        /*Container(
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.arrow_back_outlined,color: white,),
                  ),
                ),*/
                        Container(
                          margin: EdgeInsets.only(top: m1),
                          child: Text(str_search,
                              style: TextStyle(
                                fontFamily: stc_font,
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: white,
                              )),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: tfheight,
                          width: tfwidth,
                          child: TextField(
                            controller: search,
                            //textAlign: TextAlign.center,

                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.zero,
                              prefixIcon: Icon(
                                Icons.search,
                                color: white,
                                size: 27,
                              ),
                              hintText: str_search,
                              hintStyle: TextStyle(
                                fontFamily: stc_font,
                                color: whites,
                                fontWeight: FontWeight.w600,
                              ),
                              //prefixText:str_search ,
                              filled: true,
                              fillColor: whitet,
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(radius)),
                                borderSide: BorderSide(
                                  color: white,
                                  width: 2,
                                ),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(radius)),
                                borderSide: BorderSide(
                                  color: white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ]),
                ),
              ],
            ),
            Expanded(
              child: Column(
                children: [
                  ////////////////////////////////////
                  Container(
                    margin: EdgeInsets.only(top: mr),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: leftm1),
                          child: Text(
                            str_filter,
                            style: TextStyle(
                                color: blu1,
                                fontFamily: stc_font,
                                fontWeight: FontWeight.w500,
                                fontSize: 14),
                          ),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: leftm2),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                elevation: 0,
                                value: _value,
                                items: [
                                  DropdownMenuItem(
                                    child: Text(str_option,
                                        style: TextStyle(
                                          color: blu2,
                                          fontSize: 14,
                                          fontFamily: stc_font,
                                        )),
                                    value: 1,
                                  ),
                                  DropdownMenuItem(
                                    child: Text("Second Item",
                                        style: TextStyle(
                                          color: blu2,
                                          fontSize: 14,
                                          fontFamily: stc_font,
                                        )),
                                    value: 2,
                                  )
                                ],

                                onChanged: (int value) {
                                  setState(() {
                                    _value = value;
                                  });
                                },
                                //hint:Text("Select item")
                              ),
                            )),
                        Container(
                            margin: EdgeInsets.only(left: leftm3),
                            child: Text(str_result,
                                style: TextStyle(
                                  color: blu1,
                                  fontSize: 14,
                                  fontFamily: stc_font,
                                ))),
                      ],
                    ),
                  ),
                  ////////////////widget
                  Expanded(
                    child: SizedBox(
                        height: MediaQuery.of(context).size.height * .50,
                        child: GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithMaxCrossAxisExtent(
                                    maxCrossAxisExtent: 278),
                            itemCount: 10,
                            itemBuilder: (
                              BuildContext context,
                              int index,
                            ) {
                              return Center(
                                  child: Container(
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

                                //margin: EdgeInsets.only(top: 200,right: 75),
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
                                          margin: EdgeInsets.only(
                                              right: 120, top: 0),
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
                                                            child: Text(
                                                                str_price,
                                                                style:
                                                                    TextStyle(
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
                              ));
                            })),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
