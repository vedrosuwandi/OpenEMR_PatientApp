import 'package:flutter/material.dart';

class SocialLogin extends StatelessWidget {
  final String iconsrc;
  final Function onpress;

  const SocialLogin({
    Key key,
    this.iconsrc,
    this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: Colors.white,
          ),
          shape: BoxShape.circle,
        ),
        child: Image.asset(
          iconsrc,
          width: 40,
          height: 40,
        ),
      ),
    );
  }
}
