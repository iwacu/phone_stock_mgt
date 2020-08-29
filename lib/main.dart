import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phone_stock_mgt/Pages/HomePage/HomePage.dart';
import 'package:phone_stock_mgt/Pages/constant/sizeconfig.dart';

void main() => runApp(MyApp());
  

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        Responsive().init(constraints, orientation);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Files App',
          //home_page
          home: HomePage(),
        );
      });
    });
  }
}


