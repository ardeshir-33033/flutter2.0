import 'package:flutter/material.dart';
import 'dart:math';

BoxDecoration secondaryBack = BoxDecoration(
  image: DecorationImage(
    image: AssetImage(
      "images/asset-1.png",
    ),
    fit: BoxFit.fill,
  ),
);

class TopTitle extends StatelessWidget {
  TopTitle({
    this.title,
});
  String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width / 2,
      height: MediaQuery.of(context).size.height / 18,
      decoration: BoxDecoration(
        color: Color(0xFFFDFDFE),
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(color: Color(0xFF303988), width: 1),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              color: Color(0xFF303988),
              fontWeight: FontWeight.bold,
              fontSize: MediaQuery.of(context).size.width / 18),
        ),
      ),
    );
  }
}

class DividerTitle extends StatelessWidget {
  DividerTitle({this.title, this.mainHeight, this.mainWidth});

  final double mainHeight;
  final double mainWidth;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: mainWidth / 30, vertical: mainHeight / 70),
        child: Row(
          children: [
            Text(
              title,
              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: Color(0xFF303988),
                fontWeight: FontWeight.bold,
                fontSize: mainWidth / 17,
              ),
            ),
            SizedBox(
              width: mainWidth / 40,
            ),
            Flexible(
              child: Divider(
                thickness: 7,
                color: Color(0xFFFD417F),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class mainHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);
    return Row(
      mainAxisAlignment:
      MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
              right: deviceInfo.size.width / 20),
          child: CircleAvatar(
            radius: deviceInfo.size.width / 11,
            backgroundColor: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(3),
              child: ClipOval(
                  child: Image.asset('images/1.png')),
            ),
          ),
        ),
        Transform.rotate(
          angle: 90 * pi / 180,
          child: FlatButton(
            child: Icon(
              Icons.label,
              size: deviceInfo.size.width / 13,
              color: Colors.white,
            ),
            onPressed: () {},
            shape: CircleBorder(),
            color: Colors.black.withOpacity(0.4),
            padding: EdgeInsets.all(10.0),
          ),
        ),
      ],
    );
  }
}

class buttonwidget extends StatelessWidget {
  buttonwidget({
    this.mainWidth,
    this.text,
    this.padding,
  });

  final double padding;
  final String text;
  final double mainWidth;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xFFFCAC5E),
      borderRadius: BorderRadius.circular(15),
      child: MaterialButton(
        onPressed: () {},
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: padding),
          child: Text(
            text,
            style: TextStyle(
              fontSize: mainWidth / 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF303988),
            ),
          ),
        ),
      ),
    );
  }
}


