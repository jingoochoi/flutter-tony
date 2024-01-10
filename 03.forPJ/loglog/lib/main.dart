import 'package:flutter/material.dart';
import 'package:loglog/page/come.dart';
import 'package:loglog/page/logi.dart';

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
      theme: ThemeData(
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            minimumSize: Size(400, 60)
          ),
        ),
      ),
      initialRoute: '/logi',
      routes: {'/home': (context) => Home(), '/logi': (context) => Logi()},

      // router does not use home
      // home: ,
    );
  }
}
