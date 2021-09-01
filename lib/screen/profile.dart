import 'package:flutter/material.dart';
import 'package:emarket/Resorses/resources.dart';
import 'package:emarket/Resorses/string_resourc.dart';

class profile extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return profilestate();
  }
}

class profilestate extends State<profile> {
  @override
  Widget build(BuildContext context) {
    double mgr1 = MediaQuery.of(context).size.height * .27;
    double mgr2 = MediaQuery.of(context).size.height * .0343;
    double mgr3 = MediaQuery.of(context).size.height;
    double btheight = MediaQuery.of(context).size.height * .0546;
    double btwifth = MediaQuery.of(context).size.width * .2916;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          flexibleSpace: Image(
            image: AssetImage('assets/images/header2.png'),
          ),
          title: Text(
            'profle',
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: stc_font, fontSize: 15, color: white),
          ),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: mgr1),
                child: Text(
                  str_logged,
                  style: TextStyle(
                    fontFamily: "STC",
                    color: blue,
                    fontSize: 22,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: mgr2),
                child: Text(
                  str_need,
                  style: TextStyle(
                    color: blac,
                    //fontFamily:"STC" ,
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: mgr2),
                height: btheight,
                width: btwifth,
                child: RaisedButton(
                  color: ongo,
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(radius)),
                  child: Text(
                    '$str_signup',
                    style: TextStyle(
                      fontSize: 14,
                      color: white,
                    ),
                  ),
                  onPressed: () {
                    //_showAlert(context);
                  },
                ),
              ),
            ],
          ),
        ));
  }

  // _showAlert(context) {
  // return showDialog(context: context, builder: (BuildContext context,) {
  /*double boxheight=MediaQuery.of(context).size.height*.2878;
      double boxwidth=MediaQuery.of(context).size.width*.8916;
      return AlertDialog(


               child: Container(
                 width: boxwidth,
                 height: boxheight,
                 child: Column(
                   children: [
                     Positioned(
                         left: 10,
                         top: 20,child:
                     IconButton(
                       icon:Icon (Icons.close),
                       onPressed: (){},
                     )),
                     Container(
                       margin:EdgeInsets.only(top: 20),
                       child: Text('$str_boxparagraph\n $str_boxparagraph2'),
                     ),
                     Container(
                       child: Row(
                         children: [

                           Container(
                             child: RaisedButton(
                               color: ongo,
                               shape: RoundedRectangleBorder(
                                   borderRadius: new BorderRadius.circular(radius)
                               ),
                               onPressed: (){},
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
                               onPressed: (){},
                               child: Text(str_signin),
                             ),
                           ),
                         ],
                       ),
                     ),
                   ],
                 )
               )

              })
      );
    });*/
}
