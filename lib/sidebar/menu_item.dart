import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String title, im;
  final Function onTap;
  final bool isSelected;

  const MenuItem({Key key, this.icon, this.title, this.im, this.onTap, this.isSelected = false,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(
          bottom: h * 0.0315,
        ),
        child: Row(
          children: <Widget>[
            ImageIcon(
              AssetImage('images/$im.png'),
              color: Colors.white,
              size: 20.0,
            ),
            SizedBox(
              width: 18,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 16, 
              color: isSelected ? Colors.white : Color(0xffcbddff),
              fontFamily: "stc",
              ),
            )
          ],
        ),
      ),
    );
  }
}
