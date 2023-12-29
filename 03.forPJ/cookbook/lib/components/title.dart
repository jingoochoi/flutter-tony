import 'package:flutter/material.dart';

class Titl extends StatelessWidget {
  const Titl({Key?key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Center(child: Text('HELP YOURSELF',style: TextStyle(color: Colors.grey,fontSize: 30,fontWeight: FontWeight.bold),)),
    );
  }
}