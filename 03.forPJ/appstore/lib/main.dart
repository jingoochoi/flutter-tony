// ignore_for_file: prefer_const_literals_to_create_immutables

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
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Text(
                    'Woman',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.green),
                  ),
                  Icon(
                    Icons.woman,
                    color: Colors.green,
                  ),
                  Spacer(),
                  Text(
                    'Kids',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.yellow),
                  ),
                  Icon(
                    Icons.child_care,
                    color: Colors.yellow,
                  ),
                  Spacer(),
                  Text(
                    'Shoes',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.blue),
                  ),
                  Icon(
                    Icons.shop,
                    color: Colors.blue,
                  ),
                  Spacer(),
                  Text(
                    'Bags',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.red),
                  ),
                  Icon(
                    Icons.backpack,
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Expanded(
                child: Image.asset(
              'bag.jpeg',
              fit: BoxFit.cover,
            )),
            Expanded(
              child: Image.asset(
                'cloth.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            //경로를 야믈파일에 저장했다!!
          ],
        ),
      ),
    );
  }
}
/*
            [ Padding 위젯 ]
            padding: EdgeInsets.all(4방향전체),
            padding: EdgeInsets.only(left/top/right/bottom특정방향만),
            padding: EdgeInsets.symmetric(수직/수평중),
           */