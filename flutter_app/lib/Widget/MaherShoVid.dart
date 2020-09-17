import 'package:flutter/material.dart';

buildAmozesh(deviceInfo) {
  return Column(
//      crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.max,
    children: <Widget>[
      Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            height: deviceInfo.size.height / 5,
            width: deviceInfo.size.width / 3,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/asset-8.png"),
                  fit: BoxFit.contain),
            ),
          ),
          Icon(
            Icons.play_circle_filled,
            color: Colors.orange,
            size: deviceInfo.size.width/5,
          ),
        ],
      ),
      VidsText(title: "جلسه اول",),
      VidsText(title: "لورم ایپسوم",)
    ],
  );
}

class VidsText extends StatelessWidget {
  const VidsText({
    this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    double mainWidth = MediaQuery.of(context).size.width;
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(right: mainWidth / 15),
        child: Text(
          title,
          style: TextStyle(
            fontSize: mainWidth / 25,
          ),
        ),
      ),
    );
  }
}