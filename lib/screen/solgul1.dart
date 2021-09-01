import 'package:flutter/material.dart';
import 'package:emarket/Resorses/resources.dart';

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          height: h * 0.037,
          width: w * 0.073,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ), //boxdeco
          child: buildOutlineButton(
              icon: Icons.add,
              press: () {
                setState(() {
                  numOfItems++;
                });
              }),
        ),
        Text(
          numOfItems.toString().padLeft(2, ""),
          style: TextStyle(
            color: Colors.white,
            fontSize: 17.0,
            fontFamily: "stc",
          ),
        ),
        Container(
          height: h * 0.037,
          width: w * 0.073,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
          ), //boxdeco
          child: buildOutlineButton(
            icon: Icons.remove,
            press: () {
              if (numOfItems > 1) {
                setState(() {
                  numOfItems--;
                });
              }
            },
          ),
        ),
      ],
    );
  }

  SizedBox buildOutlineButton({IconData icon, Function press}) {
    return SizedBox(
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero,
          side: BorderSide(color: Colors.transparent),
        ),
        onPressed: press,
        child: Icon(icon, color: ongo),
      ),
    );
  }
}
