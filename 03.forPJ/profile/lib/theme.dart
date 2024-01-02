import 'package:flutter/material.dart';

// 프라이머리컬러란 앱의 아이덴티티를 나타내는 색상임
const MaterialColor prim = MaterialColor(0xFFFFFFFF, <int, Color>{
  50: Color(0xFFFFFFFF),
  100: Color(0xFFFFFFFF),
  200: Color(0xFFFFFFFF),
  300: Color(0xFFFFFFFF),
  400: Color(0xFFFFFFFF),
  500: Color(0xFFFFFFFF),
  600: Color(0xFFFFFFFF),
  700: Color(0xFFFFFFFF),
  800: Color(0xFFFFFFFF),
  900: Color(0xFFFFFFFF),
  // 100:Colors.white,
});
ThemeData tema() {
  return ThemeData(
    primarySwatch: prim,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.blue)
    )
  );
}
