//-----------Create password---------//--------page6---------//

import 'package:appstore/resource.dart';
import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PasswordState();
  }
}

class _PasswordState extends State<Password> {
  final _password = TextEditingController();
  final _cpassword = TextEditingController();

  bool _obscureText1 = true;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: new Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: size.height * .045),
                child: new Text('Create new password',
                    style: TextStyle(
                      color: bule,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ))),
            Container(
              margin: EdgeInsets.only(top: size.height * .025),
              child: new Text('Enter your new password',
                  style: TextStyle(
                    color: agray,
                    fontSize: 16,
                  )),
            ),
            Container(
              margin: EdgeInsets.only(top: size.height * .035),
              width: 139,
              height: 139,
              child: Image.asset('images/icon2.png'),
            ),
            Container(
              margin: EdgeInsets.only(top: size.height * .035),
              width: size.width * .68,
              child: new TextField(
                  autofocus: false,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _obscureText1 = !_obscureText1;
                        });
                      },
                      child: Icon(
                        _obscureText1 ? Icons.visibility_off : Icons.visibility,
                        semanticLabel:
                            _obscureText1 ? 'show password' : 'hide password',
                        color: dark,
                      ),
                    ),
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: bule,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                  controller: _password),
            ),
            Container(
              margin: EdgeInsets.only(top: size.height * .020),
              width: size.width * .68,
              child: new TextField(
                  autofocus: false,
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _obscureText1 = !_obscureText1;
                        });
                      },
                      child: Icon(
                        _obscureText1 ? Icons.visibility_off : Icons.visibility,
                        semanticLabel:
                            _obscureText1 ? 'show password' : 'hide password',
                        color: dark,
                      ),
                    ),
                    hintText: 'Confirm Password',
                    hintStyle: TextStyle(
                      color: bule,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                  ),
                  controller: _cpassword),
            ),
            Container(
              margin: EdgeInsets.only(top: size.height * .035),
              height: size.height * .08,
              width: size.width * .68,
              // ignore: deprecated_member_use
              child: RaisedButton(
                child: Text(
                  'change Password',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                color: ongo,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                onPressed: () => {Navigator.pop(context)},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
