import 'package:flutter/material.dart';
import 'package:shop/theme.dart';

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
      theme: theme(),
      home: Cart(),
    );
  }
}

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        children: [],
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
        SizedBox(
          width: 20,
        )
      ],
    );
  }
}
