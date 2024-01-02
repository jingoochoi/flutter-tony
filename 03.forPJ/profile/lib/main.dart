import 'package:flutter/material.dart';
import 'package:profile/components/Header.dart';
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
      appBar: _appBar(),
      body: Column(children: [Head()],),
    );
  }
}

AppBar _appBar() {
  return AppBar();
}
