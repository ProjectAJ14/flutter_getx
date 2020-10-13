import 'package:flutter/material.dart';
import 'package:flutter_getx/body/screens/home/home_screen.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomeScreen(),
    );
  }
}
