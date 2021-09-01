import 'package:emarket/functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:emarket/Resorses/string_resourc.dart';
import 'package:flutter/material.dart';
import 'package:emarket/Resorses/resources.dart';
import 'package:emarket/widgets/widgets.dart';
import '../widgets/radiodialog.dart';

class prof extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return profstate();
  }
}

class profstate extends State<prof> {
  @override
  int group = 1;
  Widget build(BuildContext context) {
    ///
    transfer() {
      diag(context);
    }

    double header = MediaQuery.of(context).size.height * .4234;
    double radius2 = MediaQuery.of(context).size.height * .046;
    double radius = MediaQuery.of(context).size.width * .1319;
    double m1 = MediaQuery.of(context).size.height * .0859;
    double m2 = MediaQuery.of(context).size.height * .0093;
    double m3 = MediaQuery.of(context).size.height * .00312;
    double m4 = MediaQuery.of(context).size.height * .0468;
    double m5 = MediaQuery.of(context).size.width * .0546;
    double m6 = MediaQuery.of(context).size.width * .4888;
    double m7 = MediaQuery.of(context).size.width * .0880;
    double m8 = MediaQuery.of(context).size.height * .05;
    double m9 = MediaQuery.of(context).size.width * .75;
    double p1 = MediaQuery.of(context).size.width * .0218;
    ////height
    double h1 = MediaQuery.of(context).size.height * .0593;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            child: Stack(
              children: [
                Container(
                  height: header,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/images/header6.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: m1),
                        child: CircleAvatar(
                          radius: radius,
                          child: Image.asset('assets/images/icon235.png',
                              scale: 4),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: m2),
                        child: Text(
                          str_accountname,
                          style: TextStyle(
                            fontSize: 18,
                            color: white,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: m3),
                        child: Text(
                          str_number,
                          style: TextStyle(
                            fontSize: 15,
                            color: whiteo,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: m3),
                        child: Text(
                          str_adress,
                          style: TextStyle(
                            fontSize: 15,
                            color: whiteo,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          //language
          w_text(context, str_t_language, m4, transfer),
          divider(context),

          Container(
              child: Row(children: [
            Container(
              margin: EdgeInsets.only(left: m5),
              child: Text(str_t_allownotification),
            ),
            Container(
              margin: EdgeInsets.only(left: m6),
              child: IconButton(
                icon: Image.asset(
                  'assets/images/switcher1.png',
                  scale: 5,
                ),
                onPressed: () {
                  setState(() {
                    showdiag(context);
                  });
                  showdiag(context);
                },
              ),
            ),
          ])),
          //session
          Container(
            width: MediaQuery.of(context).size.width,
            height: h1,
            color: blu,
            padding: EdgeInsets.only(top: p1, left: m5),
            child: Text(
              str_session,
              textAlign: TextAlign.left,
              style: TextStyle(color: bl, fontFamily: stc_font),
            ),
          ),
          //logout

          w_text(context, str_t_logout, 0, transfer),
          divider(context),
          w_text(context, str_t_changepass, 0, transfer),
          Container(
            margin: EdgeInsets.only(top: m8, left: m9),
            child: FloatingActionButton(
              backgroundColor: ongo,
              foregroundColor: Colors.white,
              onPressed: () {
                // Respond to button press
              },
              child: Icon(Icons.edit),
            ),
          ),
        ],
      ),
    );
  }

  radiovalue(int value) {
    setState(() {
      print(group);
      group = value;
      print(group);
    });
  }

  /////screen 19
  showdiag(context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          double dh = MediaQuery.of(context).size.height * .25;
          double dw = MediaQuery.of(context).size.width * .5805;
          double radiomargin = MediaQuery.of(context).size.width * .1527;
          double closemargin = MediaQuery.of(context).size.width * .61;
          return Dialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) {
                  return Container(
                      width: dw,
                      height: dh,
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                  height: 14,
                                  width: 14,
                                  //color: Colors.black,
                                  margin: EdgeInsets.only(
                                      top: 10, right: closemargin),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.close,
                                      color: gray,
                                    ),
                                  )),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 0, left: radiomargin),
                            child: RadioListTile(
                                value: 1,
                                activeColor: ongo,
                                groupValue: group,
                                title: Text(
                                  str_english,
                                  style: TextStyle(fontFamily: 'STC'),
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    print(group);
                                    group = value;
                                    print(group);
                                  });
                                }),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 0, left: radiomargin),
                            child: RadioListTile(
                              value: 2,
                              groupValue: group,
                              title: Text(
                                str_arabic,
                                style: TextStyle(fontFamily: 'STC'),
                              ),
                              onChanged: (value) {
                                setState(() {
                                  print(group);
                                  group = value;
                                  print(group);
                                });
                              },
                              activeColor: ongo,
                            ),
                          ),
                        ],
                      ));
                },
              ));
        });
  }

  show(context) {
    showDialog(
        context: context,
        builder: (
          BuildContext context,
        ) {
          return new AlertDialog(content: StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
            double dialog_height = MediaQuery.of(context).size.height * .1984;
            double dialog_width = MediaQuery.of(context).size.width * .5805;
            bool value = true;
            int groupValue;

            return Container(
              height: dialog_height,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Colors.white),
              padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: [
                      RadioListTile(
                        value: 1,
                        activeColor: ongo,
                        groupValue: groupValue,
                        onChanged: radiovalue,
                      ),
                      Text(str_english),
                    ],
                  ),
                  Row(
                    children: [
                      RadioListTile(
                        value: 2,
                        activeColor: Colors.black,
                        groupValue: groupValue,
                        onChanged: radiovalue,
                      ),
                      Text(str_english),
                    ],
                  ),
                ],
              ),
            );
          }));
        });
  }
}
