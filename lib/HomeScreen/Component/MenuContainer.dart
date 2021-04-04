import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuContainer extends StatelessWidget {
  final String title;
  final String imagesrc;
  final Function onpress;

  MenuContainer({
    Key key,
    this.title,
    this.imagesrc,
    this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onpress,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                imagesrc,
                width: size.width * 0.18,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                title,
                style: GoogleFonts.openSans(
                  textStyle: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
