import 'package:emarket/Resorses/resources.dart';
import 'package:flutter/material.dart';
import 'package:emarket/Resorses/string_resourc.dart';
import 'package:flutter/rendering.dart';
import 'package:emarket/screen/login.dart';
import 'package:image_picker/image_picker.dart';

class Editpro extends StatefulWidget {
  @override
  _EditproState createState() => _EditproState();
}

class _EditproState extends State<Editpro> {
  final _namecontrolr = TextEditingController();
  final _phonecontrolr = TextEditingController();
  final _addresscontrolr = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/images/header6.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          margin:
                              EdgeInsets.only(top: size.height * .05, left: 15),
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pushNamedAndRemoveUntil(
                                  '/Forgetpassword',
                                  (Route<dynamic> route) => false);
                            },
                            icon: Image.asset(
                              'assets/images/left-arrow.png',
                              color: white,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: size.height * .05, left: size.width * .30),
                          child: Text(
                            'Edit profile',
                            style: TextStyle(
                                color: white,
                                fontSize: 22,
                                fontFamily: stc_font,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          width: size.width * .26,
                          height: size.height * .15,
                          margin: EdgeInsets.only(
                            top: size.height * .05,
                          ),
                          child: CircleAvatar(
                            radius: radius,
                            child: Image.asset(
                              'assets/images/icon235.png',
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: ongo, shape: BoxShape.circle),
                          margin: EdgeInsets.only(
                            top: size.height * .14,
                            left: size.width * .18,
                          ),
                          child: IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/images/camera.png',
                              color: white,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: size.height * .04,
              right: size.width * .70,
            ),
            child: Text(
              'Name',
            ),
          ),
          Container(
            width: size.width * .90,
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintStyle: TextStyle(color: blac, fontFamily: stc_font),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: blue),
                ),
              ),
              controller: _namecontrolr,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: size.height * .02,
              right: size.width * .70,
            ),
            child: Text(
              'Phone',
            ),
          ),
          Container(
            width: size.width * .90,
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                // contentPadding: EdgeInsets.only(top: 19),
                hintStyle: TextStyle(color: blac, fontFamily: stc_font),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: blue),
                ),
              ),
              controller: _phonecontrolr,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: size.height * .02,
              right: size.width * .70,
            ),
            child: Text(
              'Adress',
            ),
          ),
          Container(
            width: size.width * .90,
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintStyle: TextStyle(color: blac, fontFamily: stc_font),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: blue),
                ),
              ),
              controller: _addresscontrolr,
            ),
          ),
          Container(
            // ----margin rised botton about flatbuttom------//
            margin: EdgeInsets.only(top: size.height * .04),
            //--------size Rised Buttom-------//
            height: size.height * .07,
            width: size.width * .66,
            // ignore: deprecated_member_use
            child: RaisedButton(
              //------text(open string page)---------//
              child: Text('save',
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
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
