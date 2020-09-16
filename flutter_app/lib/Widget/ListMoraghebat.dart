import 'package:flutter/material.dart';

class ListMoraghebat extends StatelessWidget {
  ListMoraghebat({this.mainWidth, this.mainHeight});

  final mainWidth;
  final mainHeight;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        Padding(
          padding:  EdgeInsets.only(bottom: mainHeight/20 , right: mainWidth/40,left:mainWidth/40,top: mainHeight/50 ),
          child: Container(
            height: mainHeight/5,
//            width: mainWidth/1.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage("images/AdobeStock_-29.png"),
                fit: BoxFit.cover
              )
            ),
          ),
        ),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: mainWidth/10,vertical: mainHeight/50),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.6),
                  offset: Offset(0, 3),
                  spreadRadius: 5,
                  blurRadius: 7,
                ),
              ],
            ),
            child: Padding(
              padding:  EdgeInsets.all(mainWidth/50),
              child: Text(
                "لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم",
                style: TextStyle(
                  color: Color(0xFF303988),
                  fontSize: mainWidth/25
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
