import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Data/data.dart';
import 'package:flutter_app/Data/data2.dart';
import 'dart:math';

import 'package:flutter_app/Widget/Useful.dart';

class KharidEshterak extends StatelessWidget {
  buildEshterak(entryinfo) {
    MediaQueryData deviceInfo = entryinfo;
    List<Widget> eshterakList = [];
    eshteraks.forEach((Eshterak eshterak) {
      eshterakList.add(
        Column(
          children: <Widget>[
            Container(
              height: deviceInfo.size.height / 8,
              width: deviceInfo.size.width / 1.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  width: 1.0,
                  color: Color(0xFF303988),
                ),
                image: DecorationImage(
                  image: AssetImage(eshterak.imageUrl),
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
                          eshterak.title,
                          style: TextStyle(
                            fontSize: 25,
                            color: Color(0xFF303988),
                          ),
                        ),
                        SizedBox(height: deviceInfo.size.height / 60),
                        Text(
                          eshterak.mahane,
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
                          eshterak.totalPrice,
                          style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF303988),
                          ),
                        ),
                        Text(
                          eshterak.currency,
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
            ),
            SizedBox(
              height: deviceInfo.size.height / 40,
            ),
          ],
        ),
      );
    });
    return Column(
      children: eshterakList,
    );
  }
  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Container(
          width: deviceInfo.size.width,
          height: deviceInfo.size.height,
          decoration: secondaryBack,
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
                          padding: EdgeInsets.all(deviceInfo.size.width / 40),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
//                  width: deviceInfo.size.width / 1.9,
//                  height: deviceInfo.size.height / 18,
                  padding: EdgeInsets.symmetric(
                      horizontal: deviceInfo.size.width / 8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Color(0xFF303988),
                        width: 1,
                      )),
                  child: Padding(
                    padding: EdgeInsets.only(top: deviceInfo.size.height / 70),
                    child: Text(
                      'خرید اشتراک',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF303988),
                        fontSize: deviceInfo.size.width / 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: deviceInfo.size.height / 30,
                ),
                Text(
                  'اشتراک نداری، اشتراک بخر!',
                  style: TextStyle(
                    color: Color(0xFF303988),
                    fontSize: deviceInfo.size.width / 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: deviceInfo.size.height / 30,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                        right: deviceInfo.size.width / 12,
                        left: deviceInfo.size.width / 1.9),
                    child: Container(
//                      height: deviceInfo.size.height / 18,
//                      width: deviceInfo.size.width / 2.5,
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
                            padding: EdgeInsets.only(
                                right: deviceInfo.size.width / 80),
                            child: Icon(
                              CupertinoIcons.plus_circled,
                              color: Color(0xFF303988),
                              size: deviceInfo.size.width / 13,
                            ),
                          ),
                          SizedBox(width: deviceInfo.size.width / 100),
                          Container(
                            height: deviceInfo.size.height / 24,
                            width: 2,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: deviceInfo.size.width / 50,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: deviceInfo.size.width / 50),
                            child: Text(
                              'خرید اشتراک',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: deviceInfo.size.width / 19,
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
                buildEshterak(deviceInfo),
                SizedBox(
                  height: deviceInfo.size.height / 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: deviceInfo.size.height / 20,
                      width: deviceInfo.size.width / 2,
//                    padding: EdgeInsets.symmetric(horizontal: 2),
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
//                      height: deviceInfo.size.height / 20,
//                      width: deviceInfo.size.width / 4,
                      padding: EdgeInsets.symmetric(
                          horizontal: deviceInfo.size.width / 15),
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
                      child: Padding(
                        padding:
                            EdgeInsets.only(top: deviceInfo.size.height / 80),
                        child: GestureDetector(
                          child: Text(
                            'اعمال',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: deviceInfo.size.width / 21,
                              color: Color(0xFF303988),
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                    )
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
          fontSize: MediaQuery.of(context).size.width / 22,
          color: Color(0xFF303988),
        ),
        contentPadding:
            EdgeInsets.only(bottom: MediaQuery.of(context).size.height / 100),
        border: InputBorder.none,
      ),
    );
  }
}
