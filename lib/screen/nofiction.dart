import 'package:flutter/material.dart';

import '../Resorses/resources.dart';
import '../model/notif.dart';

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

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
          'Notifications',
          style:
              TextStyle(color: Colors.white, fontFamily: "stc", fontSize: 22.0),
        ),
        centerTitle: true,
      ),
      body: notifs.length == 0
          ? Center(
              child: Image.asset(
                'images/empty-notification.png',
                width: w * 0.52,
              ),
            )
          : Padding(
              padding: EdgeInsets.only(
                left: w * 0.058,
                right: w * 0.0527,
                top: h * 0.059,
              ),
              child: ListView.builder(
                itemCount: notifs.length,
                scrollDirection: Axis.vertical,
                cacheExtent: 100.0,
                itemBuilder: (context, index) => ItemCard(notif: notifs[index]),
              ), //listviewB
            ), //padd
    );
  }
}

class ItemCard extends StatelessWidget {
  final Notif notif;
  final Function press;
  const ItemCard({
    Key key,
    this.notif,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.only(
          bottom: h * 0.0109,
        ),
        child: Container(
          height: h * 0.0968,
          width: w * 0.888,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[200],
                  blurRadius: 80.0,
                  offset: Offset(0.0, 0.0)),
            ],
            borderRadius: BorderRadius.all(
              Radius.circular(2.0),
            ),
          ), //box deco

          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                width: w * 0.00555,
                margin: EdgeInsets.only(
                  right: w * 0.0166,
                ),
                decoration: BoxDecoration(
                  color: notif.id % 2 == 0 ? bl3 : ongo,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(2.0),
                    topLeft: Radius.circular(2.0),
                  ),
                ),
              ), //cntnr

              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '${notif.title}',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.5,
                      fontFamily: "stc",
                    ),
                  ), //txt
                  Text(
                    '${notif.subtitle}',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 13.0,
                      fontFamily: "stc",
                    ),
                  ), //txt

                  Padding(
                    padding: EdgeInsets.only(
                      left: w * 0.7,
                      top: h * 0.0055,
                    ),
                    child: Text(
                      '${notif.date}',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 9.0,
                        fontFamily: "stc",
                      ),
                    ), //txt,
                  ),
                ],
              ), //clmn
            ],
          ), //row
        ), //cntnr
      ),
    ); //gstr drctr
  }
}
