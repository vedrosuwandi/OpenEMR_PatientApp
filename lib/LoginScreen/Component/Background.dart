import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      //call the child variable
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //logo in login
          Padding(
            padding: EdgeInsets.only(top: size.height * 0.05),
          ),
          Image.asset(
            "assets/images/ANTEMR_white_horizontal.png",
            width: size.width * 0.6,
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: size.width * 0.6),
              ),
              Text(
                "For Patient",
                style: TextStyle(fontSize: 20, color: Colors.cyan),
              ),
            ],
          ),
          SizedBox(
            height: size.height * 0.1,
          ),
          child,
        ],
      ),
    );
  }
}
