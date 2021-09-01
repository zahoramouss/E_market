import 'package:emarket/conttroller/userconttroller';
import 'package:flutter/material.dart';
import 'package:emarket/Resorses/resources.dart';
import 'package:emarket/Resorses/string_resourc.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  int numOfItems = 1;

  int _counter2 = 1;

  void _incrementCounter2() {
    setState(() {
      _counter2++;
    });
  }

  void _increment2() {
    if (_counter2 > 1) {
      setState(() {
        _counter2--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Emarket db = Emarket();
    final _code = TextEditingController();
    double mgr1 = MediaQuery.of(context).size.height * .01;
    double mgr2 = MediaQuery.of(context).size.width * .060;
    double mrg3 = MediaQuery.of(context).size.width * .066;
    double mgr5 = MediaQuery.of(context).size.width * .05;
    double mgr6 = MediaQuery.of(context).size.height * .02;
    double crd = MediaQuery.of(context).size.width * .88;
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
            str_cart,
            style: TextStyle(),
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: size.height * .04,
                left: mgr5,
              ),
              ///////////////////////////////////////////////card 1
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                elevation: 5.0,
                color: white,
                child: Container(
                  ////////////////////////////////-----size card--------//
                  height: size.height * .16,
                  width: size.width * .88,

                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(
                            left: 50.0,
                          )),
                          Container(
                            margin: EdgeInsets.only(left: 20.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset('images/img4.jpeg'),
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: IconButton(
                              icon: Image.asset('images/delete.png'),
                              onPressed: () async {
                                var k;
                                await db.deletepro(k.id);
                                setState(() {
                                  k.removeAt();
                                });
                              },
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 110, top: 22.0),
                            width: size.width * .07,
                            height: size.height * .03,
                            alignment: Alignment.topRight,
                            child: Image.asset(
                              'images/coupon.png',
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 114, top: 23.0),
                            child: Text(
                              '10%',
                              style: TextStyle(color: white),
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          ////////////////////////////////////////////////texts
                          new Padding(
                            padding: EdgeInsets.only(
                                top: size.height * .025,
                                left: size.width * .03),
                            child: Text(
                              'Climino white cot',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: blac,
                                fontWeight: FontWeight.w500,
                                fontFamily: stc_font,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: EdgeInsets.only(
                                top: size.height * .01, right: 55.0),
                            child: Text(
                              '\$495',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: EdgeInsets.only(
                                top: size.height * .01, right: 55.0),
                            child: Text(
                              '\$600',
                              style: TextStyle(
                                decorationColor: Colors.grey,
                                decorationStyle: TextDecorationStyle.solid,
                                decoration: TextDecoration.lineThrough,
                                color: Colors.grey,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 12,
                        ),
                        width: size.width * .08,
                        height: size.height * .05,
                        // ignore: deprecated_member_use
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                              side: BorderSide(color: blue, width: 1)),
                          color: Color(0XFFE3f2fd),
                          onPressed: () {
                            if (numOfItems > 1) {
                              setState(() {
                                numOfItems--;
                              });
                            }
                          },
                          child: Text(
                            '-',
                            style: TextStyle(fontSize: 30, color: bl),
                          ),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(
                            left: 12.0,
                          ),
                          child: Text(
                            '$numOfItems',
                            style: TextStyle(fontSize: 25, color: blac),
                          )),
                      Container(
                        margin: EdgeInsets.only(
                          left: 12.0,
                        ),
                        width: size.width * .08,
                        height: size.height * .05,
                        // ignore: deprecated_member_use
                        child: RaisedButton(
                          color: Color(0XFFE3f2fd),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                              side: BorderSide(color: blue, width: 1)),
                          onPressed: () {
                            setState(() {
                              numOfItems++;
                            });
                          },
                          child: Text(
                            '+',
                            style: TextStyle(fontSize: 30, color: bl),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ////////////////////////////////////////////////////// card 2
            Container(
              margin: EdgeInsets.only(
                top: size.height * .02,
                left: mgr5,
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                elevation: 5.0,
                color: white,
                child: Container(
                  ///////////////////////////////////-----size card--------//
                  height: size.height * .17,
                  width: size.width * .88,
                  child: Row(
                    children: [
                      //////////////////////////////////////// image

                      Stack(
                        children: [
                          Padding(padding: EdgeInsets.only(right: 50.0)),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset('images/img2.png'),
                          ),
                          /////////////////////////////icondelete
                          Container(
                            alignment: Alignment.topLeft,
                            child: IconButton(
                              icon: Image.asset('images/delete.png'),
                              onPressed: () async {
                                var k;
                                await db.deletepro(k.id);
                                setState(() {
                                  k.removeAt();
                                });
                              },
                            ),
                          ),
                          ////////////////////////////////////icon copon
                          Container(
                            margin: EdgeInsets.only(left: 120, top: 22.0),
                            width: size.width * .07,
                            height: size.height * .03,
                            alignment: Alignment.topRight,
                            child: Image.asset('images/coupon.png'),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 125, top: 23.0),
                            child: Text(
                              '10%',
                              style: TextStyle(color: white),
                            ),
                          )
                        ],
                      ),

                      Column(
                        children: [
                          ///////////////////////////////////texts
                          new Padding(
                            padding: EdgeInsets.only(
                                top: size.height * .03, left: size.width * .03),
                            child: Text(
                              'Climino white cot',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: blac,
                                fontWeight: FontWeight.w400,
                                fontFamily: stc_font,
                              ),
                            ),
                          ),
                          new Padding(
                            padding: EdgeInsets.only(
                                top: size.height * .01, right: 55.0),
                            child: Text(
                              '\$500',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 17.0,
                                  fontFamily: stc_font),
                            ),
                          ),
                          new Padding(
                            padding: EdgeInsets.only(
                                top: size.height * .010, right: 55.0),
                            child: Text(
                              '\$700',
                              style: TextStyle(
                                decorationColor: Colors.grey,
                                decorationStyle: TextDecorationStyle.solid,
                                decoration: TextDecoration.lineThrough,
                                color: Colors.grey,
                                fontFamily: stc_font,
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                        ],
                      ),

                      Container(
                        margin: EdgeInsets.only(right: 12.0),
                        width: size.width * .08,
                        height: size.height * .05,
                        // ignore: deprecated_member_use
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                              side: BorderSide(color: blue, width: 1)),
                          color: Color(0XFFE3f2fd),
                          onPressed: _increment2,
                          child: Text(
                            '-',
                            style: TextStyle(fontSize: 30, color: bl),
                          ),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(
                            right: 10.0,
                          ),
                          child: Text(
                            '$_counter2',
                            style: TextStyle(fontSize: 25, color: blac),
                          )),
                      Container(
                        margin: EdgeInsets.only(
                          right: 10.0,
                        ),
                        width: size.width * .08,
                        height: size.height * .05,
                        // ignore: deprecated_member_use
                        child: RaisedButton(
                          color: Color(0XFFE3f2fd),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6.0),
                              side: BorderSide(color: blue, width: 1)),
                          onPressed: _incrementCounter2,
                          child: Text(
                            '+',
                            style: TextStyle(fontSize: 30, color: bl),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: mrg3,
                top: mgr2,
              ),
              child: Stack(
                children: [
                  Container(
                    width: size.width * .88,
                    height: size.height * .08,
                    child: TextField(
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                          hintStyle: TextStyle(color: bl, fontFamily: stc_font),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: bl),
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                            borderSide: BorderSide(color: dark),
                          ),
                          hintText: 'Apply promo code here'),
                      controller: _code,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 350.0),
                    height: size.height * .07,
                    width: size.width * .18,
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text('Apply', style: TextStyle(fontSize: 16)),
                      color: ongo,
                      //------color(open resource page)------//
                      textColor: white,
                      //------border radius---------//
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            ////////////////////////////////////////////////////////card3
            Container(
              margin: EdgeInsets.only(
                left: mgr5,
                top: mgr6,
              ),
              height: size.height * .18,
              width: crd,
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
                            'Cart total',
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
                            'Promo code',
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
              // ----margin rised botton about flatbuttom------//
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
                onPressed: () => {_showAlert},
              ),
            ),
          ],
        )));
  }

  _showAlert(context) {
    return showDialog(
        context: context,
        builder: (
          BuildContext context,
        ) {
          double boxheight = MediaQuery.of(context).size.height * .2878;
          double boxwidth = MediaQuery.of(context).size.width * .8916;
          return AlertDialog(
            content: Container(
              width: boxwidth,
              height: boxheight,
              child: Column(
                children: [
                  Positioned(
                      left: 10,
                      top: 20,
                      child: IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () {},
                      )),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Text('$str_boxparagraph\n $str_boxparagraph2'),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          child: RaisedButton(
                            color: ongo,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    new BorderRadius.circular(radius)),
                            onPressed: () {},
                            child: Text(str_signup),
                          ),
                        ),
                        Container(
                          child: RaisedButton(
                            color: white,
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(radius),
                              side: BorderSide(color: ongo),
                            ),
                            onPressed: () {},
                            child: Text(str_signin),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
