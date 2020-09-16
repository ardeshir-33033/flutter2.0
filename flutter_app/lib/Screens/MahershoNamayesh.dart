import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Widget/Useful.dart';
import 'dart:math';

class Namayesh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double mainWidth = MediaQuery.of(context).size.width;
    double mainHeight = MediaQuery.of(context).size.height;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Container(
          width: mainWidth,
          height: mainHeight,
          decoration: secondaryBack,
          child: SafeArea(
            child: Container(
              child: Column(
                children: <Widget>[
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: mainWidth / 20),
                        child: CircleAvatar(
                          radius: mainWidth / 11,
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
                            size: mainWidth / 13,
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
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: mainWidth / 1.9,
                      height: mainHeight / 20,
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
                            fontSize: mainWidth / 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(bottom: 30),
                            width: mainWidth / 1.1,
                            height: mainHeight / 1.2,
                            decoration: BoxDecoration(
                              color: Colors.white10.withOpacity(0.3),
                              border: Border.all(
                                width: 0.3,
                                color: Color(0xFF303988),
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: mainHeight / 30,
                                  ),
                                  Center(
                                    child: Container(
                                      height: mainHeight / 5,
                                      width: mainWidth / 1.2,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                          width: 1.0,
                                        ),
                                        color: Color(0xFF303988),
                                        image: DecorationImage(
                                          image: AssetImage(
                                            "images/asset-12.png",
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      child: Icon(
                                        Icons.play_circle_filled,
                                        color: Color(0xFFFCAB5E),
                                        size: mainWidth / 5,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: mainWidth / 30,
                                        top: mainHeight / 90),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: <Widget>[
                                        Icon(
                                          Icons.bookmark_border,
                                          size: mainWidth / 20,
                                        ),
                                        SizedBox(
                                          width: mainWidth / 1.48,
                                        ),
                                        Icon(
                                          Icons.remove_red_eye,
                                          size: mainWidth / 20,
                                        ),
                                        Icon(
                                          Icons.share,
                                          size: mainWidth / 20,
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: mainHeight / 50,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(right: mainWidth / 30),
                                    child: Text(
                                      "درباره این محتوا",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        fontSize: mainWidth / 15,
                                        color: Color(0xFF303988),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: mainHeight / 70,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(right: mainWidth / 30),
                                    child: Container(
                                      width: mainWidth / 1.2,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          border: Border.all(
                                            width: 1.5,
                                            color: Color(0xFF303988),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(15)),
                                      child: Padding(
                                        padding: EdgeInsets.all(mainWidth / 30),
                                        child: Text(
                                          "لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد",
                                          style: TextStyle(
                                            fontSize: mainWidth / 25,
                                            color: Color(0xFF303988),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: mainHeight / 50,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      buttonwidget(
                                        mainWidth: mainWidth,
                                        text: "بعدی",
                                        padding: mainWidth/35,
                                      ),
                                      SizedBox(
                                        width: mainWidth / 20,
                                      ),
                                      buttonwidget(
                                        mainWidth: mainWidth,
                                        text: "قبلی",
                                        padding: mainWidth/35,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: mainHeight / 50,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(right: mainWidth / 30),
                                    child: Text(
                                      "مهارت های مرتبط",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        fontSize: mainWidth / 15,
                                        color: Color(0xFF303988),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: mainHeight / 50,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(
                                        left: mainWidth / 20,
                                        right: mainWidth / 20,
                                        top: mainHeight / 50,
                                        bottom: mainHeight / 30),
                                    height: mainHeight / 3.3,
//                                    color: Color(0xFFF5F5F5),
                                    width: double.infinity,
                                    child: Row(
                                      children: <Widget>[
                                        Flexible(
                                          child: Column(
                                            children: <Widget>[
                                              Expanded(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            14),
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          "images/AdobeStock_-27.png"),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: mainHeight / 55,
                                              ),
                                              Expanded(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            14),
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          "images/AdobeStock_167426935.png"),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          flex: 4,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: mainWidth / 40),
                                          child: Flexible(
                                            child: Container(
                                              width: mainWidth / 2.4,
                                              height: mainHeight / 3.3,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(14),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      "images/AdobeStock_-2.png"),
                                                  fit: BoxFit.fitHeight,
                                                ),
                                              ),
                                            ),
                                            flex: 6,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          buttonwidget(
                            text: "میخواهی اشتراک بخری",
                            mainWidth: mainWidth,
                            padding: mainWidth/10,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
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
