import 'package:bmicalculator/Modules/bmi/bmi_screen.dart';
import 'package:bmicalculator/Modules/login/login_screen.dart';
import 'package:bmicalculator/Modules/registerScreen.dart';
import 'package:flutter/material.dart';

void main()async {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  final bool? isDark;
  final Widget? startwidget;


  MyApp({this.isDark, this.startwidget});
  @override
  Widget build(BuildContext context) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: SignupScreen(),
    );
  }
}
