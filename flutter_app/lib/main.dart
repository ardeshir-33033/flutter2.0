import 'package:flutter/material.dart';
import 'Screens/KharidEshterak.dart';
import 'Screens/MaherSho.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Font1",
      ),
      home: MaherSho(),
    );
  }
}
