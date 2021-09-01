import 'package:flutter/material.dart';
import 'package:emarket/Resorses/resources.dart';
import 'solgul1.dart';
import 'package:emarket/Resorses/string_resourc.dart';

class DetailsWidget extends StatelessWidget {
  final String colors, image1, image2, image3, description;

  DetailsWidget(
      {this.image1, this.image2, this.image3, this.colors, this.description});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    // var carousel = Carousel;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: w * 0.086,
          right: w * 0.083,
          top: h * 0.0497,
        ),
        child: Scaffold(
          appBar: AppBar(
            leading: Container(
              height: w * 0.097,
              width: w * 0.097,

              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10.0),
              ), //boxdeco
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(
                  Icons.arrow_back_ios_outlined,
                  color: blac,
                ),
              ), //icnBtn
            ), //cntnr

            title: new Text(
              'Solgul',
              style: TextStyle(
                color: blac,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                fontFamily: stc_font,
              ),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
          ),

          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    top: h * 0.019,
                  ),
                ),
                Hero(
                  tag: image1,
                  child: Container(
                    height: w * 0.83,
                    width: w * 0.83,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: carousel(
                        boxFit: BoxFit.cover,
                        autoplay: false,
                        dotSize: 7.0,
                        dotBgColor: Colors.transparent,
                        dotColor: Color(0xff66ffffff),
                        dotIncreaseSize: 1.05,
                        dotSpacing: 15.0,
                        dotVerticalPadding: h * 0.0179 / 2,
                        showIndicator: true,
                        indicatorBgPadding: h * 0.0179 / 2,
                        images: [
                          AssetImage('images/$image1.jpg'),
                          AssetImage('images/$image2'),
                          AssetImage('images/$image3.jpg'),
                        ],
                      ),
                    ),
                  ), //cntnr
                ), //hero

                Padding(
                  padding: EdgeInsets.only(
                    top: h * 0.03,
                  ),
                ),
                Text(
                  str_des,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: stc_font,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: h * 0.013,
                  ),
                ),
                Text(
                  str_des2,
                  style: TextStyle(
                    color: grey,
                    fontSize: 14.0,
                    fontFamily: stc_font,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: h * 0.03,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          str_color,
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: stc_font,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(w * 3 / 360),
                          margin: EdgeInsets.only(
                            left: w * 0.036,
                          ),
                          height: w * 0.075,
                          width: w * 0.075,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff70a9ff),
                          ),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ), //boxdeco
                          ), //deobox
                        ), //cntnr
                        Container(
                          padding: EdgeInsets.all(w * 3 / 360),
                          margin: EdgeInsets.only(
                            left: w * 0.036,
                          ),
                          height: w * 0.075,
                          width: w * 0.075,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: td,
                          ),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: td,
                              shape: BoxShape.circle,
                            ), //boxdeco
                          ), //deobox
                        ), //cntnr
                        Container(
                          padding: EdgeInsets.all(w * 3 / 360),
                          margin: EdgeInsets.only(
                            left: w * 0.036,
                          ),
                          height: w * 0.075,
                          width: w * 0.075,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffc4d5e9),
                          ),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: Color(0xffc4d5e9),
                              shape: BoxShape.circle,
                            ), //boxdeco
                          ), //deobox
                        ), //cntnr
                      ],
                    ), //row

                    //+ 1 -
                    Container(
                      width: w * 0.233,
                      height: h * 0.0497,
                      decoration: BoxDecoration(
                        color: ongo,
                        borderRadius: BorderRadius.circular(8.0),
                      ), //boxdeco
                      child: CartCounter(),
                    ), //cntnr
                  ],
                ), //row
                Padding(
                  padding: EdgeInsets.only(
                    top: h * 0.0455,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: w * 0.125,
                      width: w * 0.125,
                      padding: EdgeInsets.symmetric(vertical: w * 0.038),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey[200],
                              blurRadius: 30.0,
                              offset: Offset(0.0, 3.0)),
                        ],
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: ImageIcon(
                        AssetImage('images/unlike7.png'),
                        color: Colors.black,
                      ),
                    ), //cntnr

                    SizedBox(
                      width: w * 0.6,
                      height: h * 0.0621,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        color: ongo,
                        onPressed: () {},
                        child: Text(
                          'Add to cart',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "stc",
                              fontSize: 18.0),
                        ),
                      ),
                    ),
                  ],
                ), //row
                Padding(
                  padding: EdgeInsets.only(
                    top: h * 0.07,
                  ),
                ),
              ],
            ), //clmn
          ), //snglechildscroll
        ),
      ), //;
    );
  }

  carousel(
      {BoxFit boxFit,
      bool autoplay,
      double dotSize,
      Color dotBgColor,
      Color dotColor,
      double dotIncreaseSize,
      double dotSpacing,
      double dotVerticalPadding,
      bool showIndicator,
      double indicatorBgPadding,
      List<AssetImage> images}) {}
}
