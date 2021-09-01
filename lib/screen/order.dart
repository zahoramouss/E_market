import 'package:emarket/Resorses/resources.dart';
import 'package:flutter/material.dart';
import '../widgets/productsWidget.dart';
import 'package:emarket/Resorses/string_resourc.dart';

class Order extends StatelessWidget {
  final String adrs, dt, stts, payment;
  final int nmbr, prc;

  Order({this.adrs, this.dt, this.stts, this.payment, this.nmbr, this.prc});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: h * 0.485,
                  width: w,

                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/header-order.png'),
                      fit: BoxFit.fill,
                    ), // decoImage
                  ), //boxdeco
                ), //cntnr

                Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(
                        left: w * 0.055,
                        right: w * 0.30,
                        top: h * 0.036,
                        bottom: h * 0.059,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: Icon(
                              Icons.west_outlined,
                              color: Colors.white,
                            ),
                          ), //icnBtn

                          Text(
                            'Order N°$nmbr',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0,
                              fontFamily: "stc",
                              fontWeight: FontWeight.bold,
                            ),
                          ), //txt
                        ],
                      ), //row
                    ), //pdng

                    Padding(
                      padding: EdgeInsets.only(
                        left: w * 0.14,
                        right: w * 0.111, //156
                        bottom: h * 0.032,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            str_ship,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: "stc",
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '$adrs',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontFamily: "stc",
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: h * 0.0197),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    str_totalprice,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "stc",
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '\$$prc',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      fontFamily: "stc",
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: h * 0.0197),
                                  ),
                                  Text(
                                    str_status,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "stc",
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    height: h * 0.03949,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: w * 0.02),

                                    decoration: BoxDecoration(
                                      color: bl,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(10.0),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '$stts',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16.0,
                                          fontFamily: "stc",
                                        ),
                                      ), //stts
                                    ), //cntr
                                  ),
                                ],
                              ), //clmn

                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    str_date,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "stc",
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '$dt',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      fontFamily: "stc",
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: h * 0.0197),
                                  ),
                                  Text(
                                    str_payment,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "stc",
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    '$payment',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      fontFamily: "stc",
                                    ),
                                  ),
                                ],
                              ), //clmn
                            ],
                          ), //row
                        ],
                      ), //clmn
                    ), //pdng
                    //txts
                  ],
                ), //clmn
              ],
            ), //stk

            Padding(
              padding: EdgeInsets.only(
                top: h * 0.035,
                left: w * 0.086,
                bottom: h * 0.0239,
              ),
              child: Text(
                str_prodact,
                style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: "stc",
                    fontWeight: FontWeight.bold),
              ),
            ), //pdng

            _products(context),

            Padding(
              padding: EdgeInsets.only(top: h * 0.0719),
            ),

            stts == 'Processing'
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(
                        width: w * 0.38,
                        height: h * 0.056,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.orange[800]),
                            primary: ongo,
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            str_cancel,
                            style: TextStyle(
                              color: ongo,
                              fontFamily: "stc",
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: w * 0.38,
                        height: h * 0.056,
                        // ignore: deprecated_member_use
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          color: ongo,
                          onPressed: () {},
                          child: Text(
                            str_conpayment,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "stc",
                            ),
                          ),
                        ),
                      ),
                    ],
                  ) //row
                : Text(''),
          ],
        ), //clmn
      ), //SingleChildScrollView
    ); //scaf
  }

  Container _products(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Container(
      height: h * 0.207,
      width: double.infinity,
      margin: EdgeInsets.only(left: w * 0.068),

      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.grey[200],
              blurRadius: 50.0,
              offset: Offset(0.0, 0.0)),
        ],
      ), //boxDeco
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          ProductsWidget(
            name: 'Mayllra bed',
            image: 'img2.png',
            num: 1,
          ),
          ProductsWidget(
            name: 'Cozy friend',
            image: 'img7.jpg',
            num: 2,
          ),
          ProductsWidget(
            name: 'Mayllra bed',
            image: 'img2.png',
            num: 1,
          ),
        ],
      ), //listview
    );
  }
}
