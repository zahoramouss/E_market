//-------------Log in-----------//----------page1--------------//
import 'package:flutter/material.dart';
import 'package:appstore/resource.dart';

class Signin extends StatefulWidget {
  @override
  _SigninState createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final _email = TextEditingController();
  final _password = TextEditingController();
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      //-----background-----//
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        //-------Box card------//
        body: Center(
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)),
            color: wite,
            child: Container(
              width: 400,
              height: 400,
              alignment: Alignment.center,
              child: Column(
                children: [
                  //-------Email input-----//
                  Container(
                    margin: EdgeInsets.only(top: size.height * .05),
                    padding: EdgeInsets.all(22.0),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          filled: true,
                          hintText: "Email",
                          hintStyle: TextStyle(
                            color: dark,
                            fontStyle: FontStyle.italic,
                          ),
                          fillColor: bule,
                          border: OutlineInputBorder(
                              borderSide: new BorderSide(color: dark))),
                      controller: _email,
                    ),
                  ),
                  //-----------password input--------//
                  Container(
                    padding: EdgeInsets.all(22.0),
                    child: TextField(
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                        filled: true,
                        border: OutlineInputBorder(
                            borderSide: new BorderSide(color: dark)),
                        hintText: 'password',
                        hintStyle: TextStyle(color: dark),
                      ),
                      controller: _password,
                    ),
                  ),

                  // ignore: deprecated_member_use
                  FlatButton(
                    //------forgt password flatBotton-----//
                    onPressed: () =>
                        {Navigator.of(context).pushNamed('/Forgetpassword')},
                    child: Text('ForgeT password'),
                    textColor: bule,
                  ),
                  //---------sign in RisedBotton--------//
                  Container(
                    margin: EdgeInsets.only(top: size.height * .01),
                    padding: EdgeInsets.all(22.0),
                    height: size.height * .15,
                    width: size.width * .70,
                    // ignore: deprecated_member_use
                    child: RaisedButton(
                      child: Text('Sign in'),
                      color: ongo,
                      textColor: wite,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      onPressed: () => {Navigator.pop(context)},
                    ),
                  ),
                  //------text and flat Botton signup------//
                  Container(
                    child: Row(
                      children: [
                        Text('No yet account?'),
                        // ignore: deprecated_member_use
                        FlatButton(
                            onPressed: () => {Navigator.pop(context)},
                            child: Text('Sign up')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
//end page