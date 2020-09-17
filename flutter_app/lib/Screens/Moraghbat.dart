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
            child: Column(
              children: <Widget>[
                SizedBox(height: mainHeight / 70),
                mainHeader(),
                TopTitle(title: "سنجش سلامتی",),
                SizedBox(
                  height: mainHeight / 20,
                ),
                Container(
                  height: mainHeight / 2.8,
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
                      Expanded(
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: List.generate(6, (index) {
                            return Container(
                              width: mainWidth/1.5,
                              child: ListMoraghebat(mainHeight: mainHeight,mainWidth: mainWidth,),
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
