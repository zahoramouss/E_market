import 'package:emarket/Resorses/string_resourc.dart';
import 'package:flutter/material.dart';
import 'package:emarket/Resorses/resources.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  String radioButtonItem = 'ONE';
  int id = 1;
  @override
  Widget build(BuildContext context) {
    double mgr1 = MediaQuery.of(context).size.height * .01;
    double mrg2 = MediaQuery.of(context).size.width * .04;
    double mgr5 = MediaQuery.of(context).size.width * .05;
    double mgr2 = MediaQuery.of(context).size.width * .060;
    double mgr4 = MediaQuery.of(context).size.height * .02;
    double mgr6 = MediaQuery.of(context).size.height * .03;
    double mrg3 = MediaQuery.of(context).size.width * .066;
    double crd = MediaQuery.of(context).size.width * .88;
    double sdr = MediaQuery.of(context).size.width * .48;
    double crdh = MediaQuery.of(context).size.height * .10;
    double imgw = MediaQuery.of(context).size.width * .16;
    double imgh = MediaQuery.of(context).size.height * .08;

    // ignore: unused_local_variable
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushNamedAndRemoveUntil(
                '/Cart', (Route<dynamic> route) => false);
          },
          icon: Icon(
            Icons.arrow_back_outlined,
            color: white,
          ),
        ),
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/header2.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(str_payment),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: size.height * .04,
                right: size.width * .60,
              ),
              child: Text(
                str_daviled,
                style: TextStyle(
                  color: panc,
                  //  fontFamily:stc ,
                  fontSize: 22.0,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: size.width * .045,
              ),
              width: crd,
              height: size.height * .07,
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Color(0xff61f1f7fd),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: bl),
                      borderRadius: BorderRadius.circular(8.0)),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    borderSide: BorderSide(color: dark),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: size.height * .03,
                right: sdr,
              ),
              child: Text(
                str_PayMethod,
                style: TextStyle(
                  color: panc,
                  // fontFamily:stc ,
                  fontSize: 22.0,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: mgr5,
              ),
              // card 1
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                elevation: 5.0,
                color: white,
                child: Container(
                  //-----size card--------//
                  height: crdh,
                  width: crd,
                  child: Row(
                    children: [
                      //image
                      Container(
                        margin: EdgeInsets.only(left: mrg2),
                        width: imgw,
                        height: imgh,
                        child: Image.asset('icon/paypal.png'),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: size.width * .058),
                        child: Text(
                          str_paypal,
                          style: TextStyle(
                            color: blac, fontSize: 22.0,
                            // fontFamily: stc,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: size.width * .36),
                        child: Radio(
                          activeColor: ongo,
                          value: 1,
                          groupValue: id,
                          onChanged: (val) {
                            setState(
                              () {
                                radioButtonItem = 'ONE';
                                id = 1;
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: mgr4,
                left: mgr5,
              ),
              // card 2
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                elevation: 5.0,
                color: white,
                child: Container(
                  //-----size card--------//
                  height: crdh,
                  width: crd,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: mrg2),
                        width: imgw,
                        height: imgh,
                        child: Image.asset('icon/money.png'),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: size.width * .058),
                        child: Text(
                          str_cash,
                          style: TextStyle(
                            color: blac, fontSize: 22.0,
                            // fontFamily: stc,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: size.width * .172),
                        child: Radio(
                          activeColor: ongo,
                          value: 2,
                          groupValue: id,
                          onChanged: (val) {
                            setState(() {
                              radioButtonItem = 'two';
                              id = 2;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: mgr5,
                top: mgr4,
              ),
              // card 3
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                elevation: 5.0,
                color: white,
                child: Container(
                  //-----size card--------//
                  height: crdh,
                  width: crd,
                  child: Row(
                    children: [
                      //image
                      Container(
                        margin: EdgeInsets.only(left: mrg2),
                        width: imgw,
                        height: imgh,
                        child: Image.asset('icon/zain.png'),
                      ),

                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                left: size.width * .050, top: mgr1),
                            child: Text(
                              str_zain,
                              style: TextStyle(
                                color: blac, fontSize: 22.0,
                                // fontFamily: stc,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              left: mrg3,
                            ),
                            child: Text(
                              str_accountnam,
                              style: TextStyle(
                                color: Colors.grey, fontSize: 14,
                                // fontFamily: stc,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              left: mrg3,
                            ),
                            child: Text(
                              str_number2,
                              style: TextStyle(
                                color: Colors.grey, fontSize: 14,
                                // fontFamily: stc,
                              ),
                            ),
                          ),
                        ],
                      ),

                      Container(
                        margin: EdgeInsets.only(left: size.width * .28),
                        child: Radio(
                          activeColor: ongo,
                          value: 3,
                          groupValue: id,
                          onChanged: (val) {
                            setState(() {
                              radioButtonItem = 'three';
                              id = 3;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: mgr5,
                top: mgr6,
              ),
              height: size.height * .18,
              width: crd,
              // card 4
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7.0),
                ),
                elevation: 5.0,
                color: white,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              top: size.height * .025, left: mgr2),
                          child: Text(
                            str_carttot,
                            style: TextStyle(fontSize: 17.0),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: size.height * .025,
                            left: size.width * .51,
                          ),
                          child: Text(
                            '\$959',
                            style: TextStyle(fontSize: 17.0),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              top: size.height * .01, left: mgr2),
                          child: Text(
                            str_promcode,
                            style: TextStyle(fontSize: 17.0),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: mgr1,
                              left: size.width * .504,
                              right: size.width * .035),
                          child: Text(
                            '\$0',
                            style: TextStyle(fontSize: 17.0),
                          ),
                        )
                      ],
                    ),
                    Text(
                      '_______________________________________________________________',
                      style: TextStyle(color: bl),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              top: size.height * .01, left: mgr2),
                          child: Text(
                            str_total,
                            style: TextStyle(fontSize: 17.0),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: size.height * .01, left: size.width * .575),
                          child: Text(
                            '\$959',
                            style: TextStyle(fontSize: 17.0),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              //----margin rised botton about flatbuttom------//
              margin: EdgeInsets.only(top: size.height * .04, left: mrg3),
              //--------size Rised Buttom-------//
              height: size.height * .07,
              width: crd,
              // ignore: deprecated_member_use
              child: RaisedButton(
                //------text(open string page)---------//
                child: Text(str_checkout,
                    //-----------style text----------//
                    style: TextStyle(fontSize: 22)),
                //------color(open resource page)------//
                color: ongo,
                //------color(open resource page)------//
                textColor: white,
                //------border radius---------//
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                //-------onpresed raised button-------//
                // ignore: sdk_version_set_literal
                onPressed: () => {Navigator.pop(context)},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
