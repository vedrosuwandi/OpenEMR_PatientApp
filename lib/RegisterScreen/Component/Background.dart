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
      height: double.infinity,
      width: size.width,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Registration Form",
            style: TextStyle(color: Colors.cyan, fontSize: 35),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(child: child),
        ],
      ),
    );
  }
}
