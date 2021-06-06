//----------Forgetpassword------//-----page4-------//

import 'package:flutter/material.dart';
import 'package:appstore/resource.dart';

class Forgetpassword extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement
    return ForgetpasswordState();
  }
}

class ForgetpasswordState extends State<Forgetpassword> {
  final TextEditingController _email = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: new Container(
        alignment: Alignment.center,
        child: new Column(
          children: [
            //-------Text-----------//
            Container(
              margin: EdgeInsets.only(top: size.height * .108),
              child: new Text(
                'Forgot your password?',
                style: TextStyle(
                    color: bule, fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            //--------Text---------//
            Container(
              margin: EdgeInsets.only(top: size.height * .014),
              child: new Text(
                'Enter your registered email bellow',
                style: TextStyle(color: agray),
              ),
            ),
            //------Text------//
            Container(
              child: new Text('to receivce password reset instruction'),
            ),
            //--------icone photo-----//
            Container(
              margin: EdgeInsets.only(top: size.height * .035),
              width: 139,
              height: 139,
              child: Image.asset('images/1.png'),
            ),
            //---------textfieldemail------//
            Container(
              margin: EdgeInsets.only(top: size.height * .025),
              width: size.width * .68,
              child: new TextFormField(
                controller: _email,
                autofocus: false,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  filled: true,
                  hintText: 'Email',
                  hintStyle: TextStyle(
                    color: dark,
                    fontStyle: FontStyle.normal,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: size.height * .025),
              height: size.height * .08,
              width: size.width * .68,
              // ignore: deprecated_member_use
              child: RaisedButton(
                child: Text(
                  'Send Code',
                  style: TextStyle(color: Colors.white),
                ),
                color: ongo,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                onPressed: () => {
                  Navigator.of(context).pushNamed('/Creat'),
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
