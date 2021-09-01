import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

import '../bloc.navigation_bloc/navigation_bloc.dart';
import '../sidebar/menu_item.dart';

class SideBar extends StatefulWidget {
  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar>
    with SingleTickerProviderStateMixin<SideBar> {
  AnimationController _animationController;
  StreamController<bool> isSidebarOpenedStreamController;
  Stream<bool> isSidebarOpenedStream;
  StreamSink<bool> isSidebarOpenedSink;
  final _animationDuration = const Duration(milliseconds: 100);

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: _animationDuration);
    isSidebarOpenedStreamController = PublishSubject<bool>();
    isSidebarOpenedStream = isSidebarOpenedStreamController.stream;
    isSidebarOpenedSink = isSidebarOpenedStreamController.sink;
  }

  @override
  void dispose() {
    _animationController.dispose();
    isSidebarOpenedStreamController.close();
    isSidebarOpenedSink.close();
    super.dispose();
  }

  void onIconPressed() {
    final animationStatus = _animationController.status;
    final isAnimationCompleted = animationStatus == AnimationStatus.completed;

    if (isAnimationCompleted) {
      isSidebarOpenedSink.add(false);
      _animationController.reverse();
    } else {
      isSidebarOpenedSink.add(true);
      _animationController.forward();
    }
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return StreamBuilder<bool>(
      initialData: false,
      stream: isSidebarOpenedStream,
      builder: (context, isSideBarOpenedAsync) {
        return AnimatedPositioned(
          duration: _animationDuration,
          top: 0,
          bottom: 0,
          left: isSideBarOpenedAsync.data ? 0 : -w,
          right: isSideBarOpenedAsync.data ? 0 : w - w * 0.375,
          child: Stack(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      color: Color(0xff4993ff),
                    ),
                  ), //expndd
                  Container(
                    height: h,
                    width: w * 0.397,
                    child: Align(
                      alignment: Alignment(-0.9, -1),
                      child: GestureDetector(
                        onTap: () {
                          onIconPressed();
                        },
                        child: Container(
                          width: w * 0.126,
                          height: h * 0.1185,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/side-menu-opener.png'),
                              fit: BoxFit.fill,
                            ), //deco_img
                          ), //boxdeco

                          alignment: Alignment.centerLeft,
                          child: AnimatedIcon(
                            progress: _animationController.view,
                            icon: AnimatedIcons.menu_close,
                            color: Colors.transparent,
                            size: 33,
                          ),
                        ),
                      ),
                    ), //algn
                  ), //cntnr
                ],
              ), //row

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: h * 0.3868,
                    width: w * 0.75,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          height: h * 0.3868,
                          width: w * 0.75,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/menu-header.png'),
                              fit: BoxFit.fill,
                            ), //deco_img
                          ), //boxdeco
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: h * 0.09375,
                              left: w * 0.061,
                              right: w * 0.166,
                              bottom: h * 0.19,
                            ),
                            child: GestureDetector(
                              onTap:
                                  () {}, //=> Navigator.push(context, MaterialPageRoute(builder: (ccontext) => Profile())),
                              child: Container(
                                height: h * 0.103,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      height: w * 0.183,
                                      width: w * 0.183,
                                      margin: EdgeInsets.only(
                                        right: w * 0.0303,
                                      ),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.white,
                                      ),
                                      child: Image.asset('images/icon235.png'),
                                    ), //cntnr

                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'Hanan Wahabi',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16.0,
                                            fontFamily: "stc",
                                          ),
                                        ), //user nme
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context)
                                                .pushNamedAndRemoveUntil(
                                                    '/prof',
                                                    (Route<dynamic> route) =>
                                                        false);
                                          },
                                          child: Text(
                                            'View my profile',
                                            style: TextStyle(
                                              color: Color(0xffb9d5ff),
                                              fontSize: 16.0,
                                              fontFamily: "stc",
                                            ),
                                          ),
                                        ),
                                      ],
                                    ), //clmn
                                  ],
                                ), //row
                              ), //cntnr
                            ),
                          ),
                        ), //cntnr

                        Align(
                          alignment: Alignment(0.89, -1),
                          child: GestureDetector(
                            onTap: () {
                              onIconPressed();
                            },
                            child: ClipPath(
                              clipper: CustomMenuClipper(),
                              child: Container(
                                width: w * .138,
                                height: h * 0.1128,
                                alignment: Alignment.center,
                                child: AnimatedIcon(
                                  progress: _animationController.view,
                                  icon: AnimatedIcons.menu_close,
                                  color: Colors.white,
                                  size: 25,
                                ),
                              ),
                            ),
                          ),
                        ), //algn
                      ],
                    ), //stk
                  ), //cntnr
                ],
              ), //clmn

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: w * 0.083,
                          top: h * 0.359,
                        ),
                        child: Column(
                          children: <Widget>[
                            MenuItem(
                              im: 'home',
                              title: "Home",
                              onTap: () {
                                onIconPressed();
                                BlocProvider.of<NavigationBloc>(context).add(
                                    NavigationEvents.BottomNavBarClickedEvent);
                              },
                            ),
                            MenuItem(
                              im: 'shopping-bag 53',
                              title: "My Orders",
                              onTap: () {
                                onIconPressed();
                                BlocProvider.of<NavigationBloc>(context)
                                    .add(NavigationEvents.MyOrdersClickedEvent);
                              },
                            ),
                            MenuItem(
                              im: 'icon2475',
                              title: "About Us",
                              onTap: () {
                                onIconPressed();
                                BlocProvider.of<NavigationBloc>(context).add(
                                    NavigationEvents.MyAccountClickedEvent);
                              },
                            ),
                            MenuItem(
                              im: 'help34',
                              title: "FAQs",
                              onTap: () {
                                onIconPressed();
                                BlocProvider.of<NavigationBloc>(context)
                                    .add(NavigationEvents.FAQsClickedEvent);
                              },
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: h * 0.042,
                              ),
                            ),
                            Divider(
                              thickness: 0.5,
                              color: Colors.white.withOpacity(0.3),
                              indent: 0, //32,
                              endIndent: 32,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: h * 0.078),
                            ),
                            MenuItem(
                              title: "Log out",
                              im: 'icon45',
                              onTap: () {},
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: h * 0.089,
                                  left: w * 0.058,
                                  right: w * 0.122),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  ImageIcon(
                                    AssetImage('images/facebook34.png'),
                                    color: Colors.white,
                                    size: 20.0,
                                  ),
                                  ImageIcon(
                                    AssetImage('images/whatsapp2.png'),
                                    color: Colors.white,
                                    size: 20.0,
                                  ),
                                  ImageIcon(
                                    AssetImage('images/instagram.png'),
                                    color: Colors.white,
                                    size: 20.0,
                                  ),
                                ],
                              ), //row
                            ),
                          ],
                        ), //clmn
                      ),
                    ), //cntnr
                  ), //expndd
                  Container(
                    height: h,
                    width: w * 0.375,
                  ), //cntnr
                ],
              ), //row
            ],
          ), //stk
        );
      },
    );
  }
}

class CustomMenuClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Paint paint = Paint();
    paint.color = Colors.white;

    final width = size.width;
    final height = size.height;

    Path path = Path();
    path.moveTo(0, 0);
    path.quadraticBezierTo(0, 8, 10, 16);
    path.quadraticBezierTo(width - 1, height / 2 - 20, width, height / 2);
    path.quadraticBezierTo(width + 1, height / 2 + 20, 10, height - 16);
    path.quadraticBezierTo(0, height - 8, 0, height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
