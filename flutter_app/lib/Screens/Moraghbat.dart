import 'package:flutter/material.dart';
import 'package:flutter_app/Widget/ListMoraghebat.dart';
import 'package:flutter_app/Widget/Useful.dart';
import 'dart:math';

class Moraghebat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double mainWidth = MediaQuery.of(context).size.width;
    double mainHeight = MediaQuery.of(context).size.height;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: Container(
          height: mainHeight,
          width: mainWidth,
          decoration: secondaryBack,
          child: SafeArea(
            child: Container(
              child: Column(
                children: <Widget>[
                  SizedBox(height: mainHeight / 70),
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
                  SanjeshSalamat(),
                  SizedBox(
                    height: mainHeight / 20,
                  ),
                  Container(
//                    margin: EdgeInsets.all(10),
                    width: double.infinity,
                    height: mainWidth / 2.8,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        width: 1,
                        color: Color(0xFF303988),
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: mainHeight / 80,
                        ),
                        DividerTitle(
                          title: "مراقبت کرونایی",
                          mainWidth: mainWidth,
                          mainHeight: mainHeight,
                        ),
//                        ListView(
//                          scrollDirection: Axis.horizontal,
//                          children: List.generate(6, (index) {
//                            return Container(
//                              width: mainWidth/2.5,
//                              child: Container(),
//                            );
//                          }),
//                        )
                      ],
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
