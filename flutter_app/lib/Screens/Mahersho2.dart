import 'package:flutter/material.dart';
import 'package:flutter_app/Widget/Useful.dart';
import 'package:flutter_app/Widget/MaherShoVid.dart';

class Mahersho2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double mainWidth = MediaQuery.of(context).size.width;
    double mainHeight = MediaQuery.of(context).size.height;
    MediaQueryData deviceInfo = MediaQuery.of(context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Container(
          width: mainWidth,
          height: mainHeight * 1.2,
          decoration: secondaryBack,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(height: mainHeight / 70),
                  mainHeader(),
                  TopTitle(
                    title: "Word یادبگیر",
                  ),
                  SizedBox(
                    height: mainHeight / 50,
                  ),
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(bottom: mainHeight / 30),
                        width: mainWidth / 1.1,
                        height: mainHeight,
                        decoration: BoxDecoration(
                            color: Colors.white10.withOpacity(0.3),
                            border: Border.all(
                              width: 0.3,
                              color: Color(0xFF303988),
                            ),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(mainWidth / 30),
                              child: Text(
                                "درباره این مجموعه",
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: mainWidth / 15,
                                  color: Color(0xFF303988),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: mainWidth / 30),
                              child: Container(
                                width: mainWidth / 1.2,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                      width: 1.5,
                                      color: Color(0xFF303988),
                                    ),
                                    borderRadius: BorderRadius.circular(15)),
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
                            Expanded(
                              child: GridView.count(
                                crossAxisCount: 2,
//                                childAspectRatio: 0.91,
                                physics: NeverScrollableScrollPhysics(),
                                padding: EdgeInsets.all(10),
                                children: List.generate(6, (index) {
                                  return buildAmozesh1();
                                }),
                              ),
                            ),
                          ],
                        ),
                      ),
                      buttonwidget(
                        text: "میخواهی اشتراک بخری",
                        mainWidth: mainWidth,
                        padding: mainWidth / 10,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: mainHeight / 30,
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
