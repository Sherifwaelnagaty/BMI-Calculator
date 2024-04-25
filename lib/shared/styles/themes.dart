import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData LightMode= ThemeData(
    textTheme: TextTheme(
        bodyText1: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w600,
            color: Colors.black
        )
    ),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
        iconTheme: IconThemeData(
            color: Colors.black
        ),
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.black,
            statusBarBrightness: Brightness.dark
        )
    ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: Colors.deepOrange,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.deepOrange,
    )
);
// ThemeData DarkMode=ThemeData(
//   scaffoldBackgroundColor: HexColor('333739'),
//   appBarTheme: AppBarTheme(
//       color: HexColor('333739'),
//       titleTextStyle: TextStyle(
//         color: Colors.white,
//         fontSize: 20.0,
//         fontWeight: FontWeight.bold,
//       ),
//       iconTheme: IconThemeData(
//           color: Colors.white
//       ),
//       systemOverlayStyle: SystemUiOverlayStyle(
//           statusBarColor: HexColor('333739'),
//           statusBarIconBrightness: Brightness.light
//       )
//   ),
//   bottomNavigationBarTheme: BottomNavigationBarThemeData(
//     type: BottomNavigationBarType.fixed,
//     selectedItemColor: Colors.deepOrange,
//     backgroundColor: HexColor('333739'),
//   ),
//   textTheme: TextTheme(
//       bodyText1: TextStyle(
//           fontSize: 18.0,
//           fontWeight: FontWeight.w600,
//           color: Colors.white
//       )
//   ),
// );
