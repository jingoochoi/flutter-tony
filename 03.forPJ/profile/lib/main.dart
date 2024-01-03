import 'package:flutter/material.dart';
import 'package:profile/components/Header.dart';
import 'package:profile/components/cunt.dart';
import 'package:profile/components/draw.dart';
import 'package:profile/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: tema(),
      home: Pago(),
    );
  }
}

class Pago extends StatelessWidget {
  const Pago({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Draw(), //드로워가 있을 경우 햄버거는 자동생성
      appBar: _appBar(),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Head(),
          SizedBox(height: 20,),
          Cunt(),
        ],
      ),
    );
  }
}

AppBar _appBar() {
  return AppBar();
}
