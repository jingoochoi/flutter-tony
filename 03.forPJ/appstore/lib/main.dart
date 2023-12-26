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
      home: StorePage(),
    );
  }
}
class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [Row(children: [
            Text('Woman',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
            Text('Kids',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
            Text('Shoes',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
            Text('Bags',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
          ],)],
        ),
      ),
    );
  }
}