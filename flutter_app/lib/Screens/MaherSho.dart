import 'package:flutter/material.dart';
import 'dart:math';

class MaherSho extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Container(
          width: deviceInfo.size.width,
          height: deviceInfo.size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "images/asset-1.png",
              ),
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding:
                        EdgeInsets.only(right: deviceInfo.size.width / 20),
                        child: CircleAvatar(
                          radius: deviceInfo.size.width / 11,
                          backgroundColor: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.all(3),
                            child: ClipOval(child: Image.asset('images/1.png')),
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
                  ),
                ),
                Container(
                  width: deviceInfo.size.width / 1.9,
                  height: deviceInfo.size.height / 20,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Color(0xFF303988),
                        width: 1,
                      )),
                  child: Text(
                    "Word یادبگیر",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF303988),
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
