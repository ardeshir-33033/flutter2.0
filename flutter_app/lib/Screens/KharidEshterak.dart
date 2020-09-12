import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class KharidEshterak extends StatelessWidget {
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
                SizedBox(height: 10),
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
                  child: Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                      'خرید اشتراک',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF303988),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: deviceInfo.size.height / 25,
                ),
                Text(
                  'اشتراک نداری، اشتراک بخر!',
                  style: TextStyle(
                    color: Color(0xFF303988),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: deviceInfo.size.height / 30,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: deviceInfo.size.width / 12),
                    child: Container(
                      height: deviceInfo.size.height / 20,
                      width: deviceInfo.size.width / 2.5,
                      decoration: BoxDecoration(
                        color: Color(0xFFFCAB5E),
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 2.0,
                          color: Colors.white,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.6),
                            offset: Offset(0, 3),
                            spreadRadius: 5,
                            blurRadius: 7,
                          ),
                        ],
                      ),
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(right: 8.0),
                            child: Icon(
                              CupertinoIcons.plus_circled,
                              color: Color(0xFF303988),
                              size: 30,
                            ),
                          ),
                          SizedBox(width: 5),
                          Container(
                            height: 30,
                            width: 2,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Text(
                              'خرید اشتراک',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF303988),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: deviceInfo.size.height / 40,
                ),
                EshterakWidget(
                  deviceInfo: deviceInfo,
                  text1: "اشتراک یک ماهه",
                  text2: "ماهانه 12،000",
                  text3: " 12،000",
                  text4: "تومان",
                  imageUrl: 'images/abi.png',
                ),
                SizedBox(
                  height: deviceInfo.size.height / 40,
                ),
                EshterakWidget(
                  deviceInfo: deviceInfo,
                  text1: "اشتراک یسه ماهه",
                  text2: "ماهانه 10،000",
                  text3: " 30،000",
                  text4: "تومان",
                  imageUrl: 'images/narenji.png',
                ),
                SizedBox(
                  height: deviceInfo.size.height / 40,
                ),
                EshterakWidget(
                  deviceInfo: deviceInfo,
                  text1: "اشتراک شش ماهه",
                  text2: "ماهانه 9،000",
                  text3: " 54،000",
                  text4: "تومان",
                  imageUrl: 'images/abi.png',
                ),
                SizedBox(
                  height: deviceInfo.size.height / 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: deviceInfo.size.height / 20,
                      width: deviceInfo.size.width / 2,
                      decoration: BoxDecoration(
                        color: Color(0xFFFCAB5E),
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          width: 2.0,
                          color: Colors.white,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.6),
                            offset: Offset(0, 3),
                            spreadRadius: 5,
                            blurRadius: 7,
                          ),
                        ],
                      ),
                      child: TextWidget(
                        text: "کد تخفیف خود را وارد کنید",
                      ),
                    ),
                    Container(
                        height: deviceInfo.size.height / 20,
                        width: deviceInfo.size.width / 4,
                        decoration: BoxDecoration(
                          color: Color(0xFFFCAB5E),
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            width: 2.0,
                            color: Colors.white,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.6),
                              offset: Offset(0, 3),
                              spreadRadius: 5,
                              blurRadius: 7,
                            ),
                          ],
                        ),
                        child: TextWidget(
                          text: "اعمال",
                        )),
                  ],
                ),
                SizedBox(
                  height: deviceInfo.size.height / 30,
                ),
                GestureDetector(
                  child: Container(
                    height: deviceInfo.size.height / 10,
                    width: deviceInfo.size.width / 1.2,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('images/edame.png'))),
                  ),
                  onTap: () {},
                ),
                SizedBox(
                  height: deviceInfo.size.height / 40,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        hintText: text,
        hintStyle: TextStyle(
          fontSize: 20,
          color: Color(0xFF303988),
        ),
        contentPadding: EdgeInsets.only(bottom: 3),
        border: InputBorder.none,
      ),
    );
  }
}

class EshterakWidget extends StatelessWidget {
  const EshterakWidget({
    Key key,
    this.text1,
    this.text2,
    this.text3,
    this.text4,
    this.imageUrl,
    @required this.deviceInfo,
  }) : super(key: key);

  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String imageUrl;
  final MediaQueryData deviceInfo;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: deviceInfo.size.height / 8,
      width: deviceInfo.size.width / 1.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 1.0,
          color: Color(0xFF303988),
        ),
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  text1,
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xFF303988),
                  ),
                ),
                SizedBox(height: deviceInfo.size.height / 60),
                Text(
                  text2,
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF303988),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 45.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  text3,
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF303988),
                  ),
                ),
                Text(
                  text4,
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF303988),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
