import 'package:flutter/material.dart';

BoxDecoration secondaryBack = BoxDecoration(
  image: DecorationImage(
    image: AssetImage(
      "images/asset-1.png",
    ),
    fit: BoxFit.fill,
  ),
);

class SanjeshSalamat extends StatelessWidget {
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
          'سنجش سلامتی',
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
