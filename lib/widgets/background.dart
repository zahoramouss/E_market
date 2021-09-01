import 'package:flutter/material.dart';

class Background extends StatefulWidget {
  const Background({
    Key key,
  }) : super(key: key);
  @override
  _BackgroundState createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('images/background.png'),
        ),
      ),
    );
  }
}
