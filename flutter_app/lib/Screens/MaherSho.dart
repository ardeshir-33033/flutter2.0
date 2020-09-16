import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_app/Widget/Useful.dart';


class MaherSho extends StatelessWidget {
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
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(right: deviceInfo.size.width / 15),
            child: Text(
              "جلسه اول",
              style: TextStyle(
                fontSize: deviceInfo.size.width / 25,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(right: deviceInfo.size.width / 15),
            child: Text(
              "لورم ایپسوم",
              style: TextStyle(
                fontSize: deviceInfo.size.width / 25,
              ),
            ),
          ),
        ),
      ],
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
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            SafeArea(
                              child: Row(
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
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                width: deviceInfo.size.width / 1.9,
                                height: deviceInfo.size.height / 20,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                    border: Border.all(
                                      color: Color(0xFF303988),
                                      width: 1,
                                    )),
                                child: Positioned(
                                  bottom: 30,
                                  child: Text(
                                    "Word یادبگیر",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0xFF303988),
                                      fontSize: deviceInfo.size.width / 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: deviceInfo.size.height / 50,
                    ),
                    Stack(
                      children: <Widget>[
                        Container(
                          width: deviceInfo.size.width / 1.1,
                          height: deviceInfo.size.height / 1,
                          decoration: BoxDecoration(
                              color: Colors.white10.withOpacity(0.3),
                              border: Border.all(
                                width: 0.3,
                                color: Color(0xFF303988),
                              ),
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: <Widget>[
                              Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      deviceInfo.size.width / 30),
                                  child: Text(
                                    "درباره این مجموعه",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: deviceInfo.size.width / 15,
                                      color: Color(0xFF303988),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: deviceInfo.size.width / 1.2,
//                        height: deviceInfo.size.height / 6,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      width: 1.5,
                                      color: Color(0xFF303988),
                                    ),
                                    borderRadius: BorderRadius.circular(15)),
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      deviceInfo.size.width / 30),
                                  child: Text(
                                    "لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد",
                                    style: TextStyle(
                                      fontSize: deviceInfo.size.width / 25,
                                      color: Color(0xFF303988),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: GridView.count(
                                  crossAxisCount: 2,
                                  childAspectRatio: 0.91,
                                  physics: BouncingScrollPhysics(),
                                  padding: EdgeInsets.all(0),
                                  children: List.generate(6, (index) {
                                    return buildAmozesh(deviceInfo);
                                  }),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      child: Container(
                        height: deviceInfo.size.height / 18,
                        padding: EdgeInsets.symmetric(
                            horizontal: deviceInfo.size.width / 8),
                        decoration: BoxDecoration(
                            color: Color(0xFFFCAB5E),
                            borderRadius: BorderRadius.circular(30),
                            ),
                        child: Padding(
                          padding: EdgeInsets.only(top: deviceInfo.size.height / 70),
                          child: Text(
                            'میخواهی اشتراک بخری؟',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF303988),
                              fontSize: deviceInfo.size.width / 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
