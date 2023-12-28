import 'package:cookbook/pages/recipepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // fontFamily: 하나의 폰트만 적용된다
        fontFamilyFallback: ['Diphylleia','PatuaOne']
      ),
      home: Pago(),
    );
  }
}
